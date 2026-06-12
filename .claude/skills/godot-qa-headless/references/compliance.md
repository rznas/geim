# Compliance & pre-ship checks (Godot 4.6)

Mechanical checks a Compliance Tester runs before a build ships. Most automate
headlessly; wire them into CI and the vertical-slice / launch gates.

## Boot health

- **No errors on load**: `check_run.sh <dir>` — runs the main scene, fails on any
  `ERROR`/`SCRIPT ERROR`. The single most valuable gate.
- **No missing resources**: `--import` and `--check-only` surface missing/broken
  resource references. A clean `--import` exit means every `res://` reference
  resolves.

## Build & export integrity

- **Compiles**: `dotnet build` returns 0 (project-setup `build_and_check.sh`).
- **Exports cleanly per target**: each preset in `export_presets.cfg` exports
  without error. Hand to `godot-export-build`; a failed export is a hard block.
- **C# web caveat**: Godot 4 C# **cannot export to web**. If a web build is
  required, that's a platform-compliance failure to flag early — choose desktop
  targets or a GDScript path.

## Input & accessibility

- **Input map complete**: every action the game reads (`Input.IsActionPressed("...")`)
  exists in `project.godot [input]`. Grep the code for action names and diff
  against the input map.
- **Controller support**: actions bound to gamepad too, UI has focus navigation
  (godot-ui-csharp), no mouse-only interactions on console targets.

## Localization (per benchmark targets zh_CN + pt_BR)

- Every user-facing string is a translation key, not a hardcoded English literal
  (grep for `.Text =` with literal strings and `Tr(` usage).
- All keys present for each shipped locale in the translation CSV/PO.
- CJK font assigned (Chinese renders, no boxes).

## Platform requirements (Steam-first per benchmark)

- App name, icon, version set in `project.godot` / export preset.
- No debug-only code paths in the release export (`#if DEBUG` guards, no dev
  cheats reachable).
- Save data in `user://` (not `res://`), so it works in the exported build.
- Frame rate / resolution options exposed if the target requires them.

## Performance sanity

- `--print-fps` over a representative scene to catch obvious frame drops.
- No runaway node counts / leaked instances over a few minutes
  (`--quit-after` a long run, watch for growth in logs).

## Automating the checklist

A compliance run script chains: `build_and_check.sh` → `check_run.sh` →
`run_tests.sh` → per-preset export. Any non-zero stops the gate. Keep it as a
single CI job so "is this shippable?" is one command.
