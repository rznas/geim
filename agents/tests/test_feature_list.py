"""Tests for the mechanical feature-list guard (iteration_loop.md §8).

These lock in the 'sacred file' invariants as code: valid shape, append-only,
immutable descriptions, and no silent true->false regressions.
"""

import copy

import pytest

from game_agents.feature_list import (
    FeatureListError,
    diff,
    validate,
)


def _feature(fid="CM-001", passes=False, description="Core loop defined", **over):
    base = {
        "id": fid,
        "description": description,
        "agent": "agent_1",
        "skill": "designing-core-gameplay-experience",
        "priority": "P0",
        "dependencies": [],
        "passes": passes,
    }
    base.update(over)
    return base


def _doc(*features, category="core_mechanics"):
    return {"project": "Test", "categories": {category: list(features)}}


# --------------------------- single-snapshot shape --------------------------- #

def test_valid_snapshot_passes():
    rep = validate(_doc(_feature()))
    assert rep.ok, rep.errors


def test_missing_categories_fails():
    rep = validate({"project": "X"})
    assert not rep.ok


def test_missing_required_key_fails():
    bad = _feature()
    del bad["priority"]
    rep = validate(_doc(bad))
    assert not rep.ok
    assert any("missing keys" in e for e in rep.errors)


def test_non_boolean_passes_fails():
    rep = validate(_doc(_feature(passes="yes")))
    assert not rep.ok
    assert any("must be a boolean" in e for e in rep.errors)


def test_bad_priority_fails():
    rep = validate(_doc(_feature(priority="p0")))
    assert not rep.ok


def test_duplicate_ids_fail():
    rep = validate(_doc(_feature("CM-001"), _feature("CM-001")))
    assert not rep.ok
    assert any("duplicate" in e for e in rep.errors)


def test_unknown_dependency_warns_not_errors():
    rep = validate(_doc(_feature(dependencies=["CM-999"])))
    assert rep.ok  # warning only
    assert any("unknown id" in w for w in rep.warnings)


# ----------------------------- cross-version diff ---------------------------- #

def test_append_is_allowed():
    before = _doc(_feature("CM-001"))
    after = _doc(_feature("CM-001"), _feature("CM-002", description="Second"))
    assert diff(before, after).ok


def test_delete_is_rejected():
    before = _doc(_feature("CM-001"), _feature("CM-002", description="Second"))
    after = _doc(_feature("CM-001"))
    rep = diff(before, after)
    assert not rep.ok
    assert any("deleted" in e for e in rep.errors)


def test_passes_false_to_true_is_allowed():
    before = _doc(_feature("CM-001", passes=False))
    after = _doc(_feature("CM-001", passes=True))
    assert diff(before, after).ok


def test_description_edit_is_rejected():
    before = _doc(_feature("CM-001", description="Original"))
    after = _doc(_feature("CM-001", description="Reworded"))
    rep = diff(before, after)
    assert not rep.ok
    assert any("description was edited" in e for e in rep.errors)


def test_silent_regression_is_rejected():
    before = _doc(_feature("CM-001", passes=True))
    after = _doc(_feature("CM-001", passes=False))  # no note
    rep = diff(before, after)
    assert not rep.ok
    assert any("regressed" in e for e in rep.errors)


def test_declared_regression_is_allowed_with_warning():
    before = _doc(_feature("CM-001", passes=True))
    after = _doc(_feature("CM-001", passes=False, note="Broke when mechanics changed; P0 filed"))
    rep = diff(before, after)
    assert rep.ok
    assert any("regressed" in w for w in rep.warnings)


def test_raise_if_failed_raises():
    before = _doc(_feature("CM-001"), _feature("CM-002", description="Second"))
    after = _doc(_feature("CM-001"))
    with pytest.raises(FeatureListError):
        diff(before, after).raise_if_failed()


def test_identity_diff_is_clean():
    doc = _doc(_feature("CM-001"), _feature("CM-002", description="Second"))
    assert diff(doc, copy.deepcopy(doc)).ok
