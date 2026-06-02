"""Mechanical guard for the sacred feature list (`docs/workflow/feature_list.json`).

`iteration_loop.md` §8 calls the feature list "sacred": append-only, features are
never deleted or reworded, and `passes` only flips `false -> true` after
verification (or `true -> false` on a *declared* regression). Those are currently
prose rules an agent can violate silently. This module turns them into code:

  - `validate(data)`            — structural invariants on a single snapshot.
  - `diff(before, after)`       — the append-only / no-reword / no-silent-regression
                                  invariants BETWEEN two snapshots (e.g. the git
                                  HEAD version vs the about-to-commit version).

Used by the test suite, and intended to be called in the Commit phase (Task 08)
and/or a pre-commit hook so a violation fails loudly instead of corrupting the
project's shared memory.

The schema is intentionally small and matches the structure documented in
`iteration_loop.md` §7.1 — it validates shape and the cross-version rules, not
game-design semantics.
"""

from __future__ import annotations

import json
from dataclasses import dataclass, field
from pathlib import Path
from typing import Any

# Priority vocabulary from the backlog/feature docs. Kept permissive but checked
# so typos (e.g. "p0", "P-0") are caught early.
VALID_PRIORITIES = {"P0", "P1", "P2", "P3"}

# Required keys on every feature object (iteration_loop.md §7.1 structure).
REQUIRED_FEATURE_KEYS = {
    "id",
    "description",
    "agent",
    "skill",
    "priority",
    "dependencies",
    "passes",
}


class FeatureListError(ValueError):
    """Raised when the feature list violates a sacred invariant."""


@dataclass
class FeatureListReport:
    """Outcome of a validation/diff. `ok` is False if any errors were collected."""

    errors: list[str] = field(default_factory=list)
    warnings: list[str] = field(default_factory=list)

    @property
    def ok(self) -> bool:
        return not self.errors

    def raise_if_failed(self) -> None:
        if self.errors:
            raise FeatureListError(
                "feature_list.json failed validation:\n  - "
                + "\n  - ".join(self.errors)
            )


def load(path: str | Path) -> dict[str, Any]:
    """Load and parse the feature list JSON (raises on syntax errors)."""
    text = Path(path).read_text()
    try:
        return json.loads(text)
    except json.JSONDecodeError as exc:  # surface a clear, actionable message
        raise FeatureListError(f"feature_list.json is not valid JSON: {exc}") from exc


def _iter_features(data: dict[str, Any]):
    """Yield (category, feature) for every feature across all categories."""
    categories = data.get("categories", {})
    if not isinstance(categories, dict):
        return
    for category, features in categories.items():
        if not isinstance(features, list):
            continue
        for feature in features:
            yield category, feature


def index_by_id(data: dict[str, Any]) -> dict[str, dict[str, Any]]:
    """Map feature id -> feature object (last one wins if ids duplicate)."""
    return {f["id"]: f for _cat, f in _iter_features(data) if isinstance(f, dict) and "id" in f}


def validate(data: dict[str, Any]) -> FeatureListReport:
    """Check structural invariants on a single feature-list snapshot."""
    report = FeatureListReport()

    if not isinstance(data, dict):
        report.errors.append("top level must be a JSON object")
        return report
    if "categories" not in data or not isinstance(data["categories"], dict):
        report.errors.append("missing object field 'categories'")
        return report

    seen_ids: set[str] = set()
    for category, feature in _iter_features(data):
        if not isinstance(feature, dict):
            report.errors.append(f"[{category}] feature is not an object: {feature!r}")
            continue

        missing = REQUIRED_FEATURE_KEYS - feature.keys()
        if missing:
            report.errors.append(
                f"[{category}] feature {feature.get('id', '?')} missing keys: {sorted(missing)}"
            )

        fid = feature.get("id")
        if isinstance(fid, str):
            if fid in seen_ids:
                report.errors.append(f"duplicate feature id '{fid}' (ids are permanent and unique)")
            seen_ids.add(fid)

        if "passes" in feature and not isinstance(feature["passes"], bool):
            report.errors.append(f"[{category}] feature {fid}: 'passes' must be a boolean")

        prio = feature.get("priority")
        if prio is not None and prio not in VALID_PRIORITIES:
            report.errors.append(
                f"[{category}] feature {fid}: priority {prio!r} not in {sorted(VALID_PRIORITIES)}"
            )

        deps = feature.get("dependencies")
        if deps is not None and not isinstance(deps, list):
            report.errors.append(f"[{category}] feature {fid}: 'dependencies' must be a list")

    # Dependencies should reference real feature ids (warn, not error: a feature
    # may legitimately depend on something added in the same commit out of order).
    all_ids = set(seen_ids)
    for category, feature in _iter_features(data):
        if not isinstance(feature, dict):
            continue
        for dep in feature.get("dependencies", []) or []:
            if dep not in all_ids:
                report.warnings.append(
                    f"[{category}] feature {feature.get('id')} depends on unknown id '{dep}'"
                )

    return report


def diff(before: dict[str, Any], after: dict[str, Any]) -> FeatureListReport:
    """Check the cross-version 'sacred' invariants between two snapshots.

    Enforces, from `iteration_loop.md` §8:
      1. No feature is DELETED (append-only).
      2. No feature DESCRIPTION is edited after creation.
      3. `passes` does not silently go true -> false. A regression is allowed, but
         only when the feature carries a note explaining it (so it can't be a
         silent backslide); this surfaces as a warning to confirm intent.
      4. Feature ids are permanent (an id present before must still be present).
    """
    report = FeatureListReport()
    before_idx = index_by_id(before)
    after_idx = index_by_id(after)

    # 1 & 4: nothing removed.
    removed = set(before_idx) - set(after_idx)
    for fid in sorted(removed):
        report.errors.append(f"feature '{fid}' was deleted — the feature list is append-only")

    for fid, old in before_idx.items():
        new = after_idx.get(fid)
        if new is None:
            continue  # already reported as removed

        # 2: descriptions are immutable.
        if old.get("description") != new.get("description"):
            report.errors.append(
                f"feature '{fid}' description was edited — descriptions are immutable; "
                f"create a new feature and mark the old one superseded instead"
            )

        # 3: no silent regression.
        if old.get("passes") is True and new.get("passes") is False:
            note = str(new.get("note") or new.get("regression_note") or "").strip()
            if not note:
                report.errors.append(
                    f"feature '{fid}' regressed true->false with no note — a regression "
                    f"must be declared (add a 'note' explaining it and a P0 backlog item)"
                )
            else:
                report.warnings.append(
                    f"feature '{fid}' regressed true->false (declared): {note}"
                )

    return report


def validate_file(path: str | Path) -> FeatureListReport:
    """Convenience: load + validate a single snapshot file."""
    return validate(load(path))


if __name__ == "__main__":  # tiny CLI: `python -m game_agents.feature_list <path>`
    import sys

    target = sys.argv[1] if len(sys.argv) > 1 else "docs/workflow/feature_list.json"
    rep = validate_file(target)
    for w in rep.warnings:
        print(f"warning: {w}")
    if rep.ok:
        print(f"ok: {target} is valid ({len(index_by_id(load(target)))} features)")
    else:
        for e in rep.errors:
            print(f"error: {e}")
        sys.exit(1)
