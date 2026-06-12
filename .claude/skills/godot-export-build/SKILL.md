---
name: godot-export-build
description: >
  Export, package, and ship a Godot 4.6 C# game — building platform binaries,
  configuring export presets, packaging .pck files, and setting up multiplayer/
  dedicated servers. Use this whenever you need to export the game for Windows/
  Linux/macOS, set up or edit export_presets.cfg, run --export-release/--export-debug
  from the command line, build in CI, install export templates, create a .pck/.zip
  pack, configure a dedicated server build, or set up Godot high-level multiplayer
  (ENet, RPCs, MultiplayerSpawner). Reach for it any time the task is "build a
  release", "export for Windows", "package the game", "set up CI to build it",
  "make a dedicated server", "add multiplayer", or "ship it". It has the verified
  export CLI, the export_presets.cfg model, the C#-can't-export-to-web constraint,
  and the platform order from the project benchmark. Covers Producer, Compliance,
  and Network Programmer work. Assumes a buildable project (godot-project-setup).
---

# Godot Export & Build (C#)

Turn a project into shippable binaries, and (optionally) wire up networking.
Exporting is driven by **export presets** and the editor binary's
`--export-release` CLI — no GUI needed once presets exist.

## Two prerequisites people miss

1. **Export templates must be installed** for your exact version
   (`4.6.3.stable.mono`). They're a separate ~hundreds-of-MB download, not
   bundled with the editor. Without them, `--export-release` fails with a
   template error. Install via the editor (Editor → Manage Export Templates) or
   drop the `.tpz` into the templates dir. `scripts/export.sh` checks for them
   and tells you if they're missing.
2. **C# cannot export to web.** Godot 4 C# targets desktop (Linux/Windows/macOS)
   fully; Android/iOS are experimental; **web is unsupported for C#**. Don't plan
   a web build on this stack — flag it early (this matches the benchmark's
   Steam-first, then Switch/console order anyway).

## Export presets

`export_presets.cfg` (project root) defines one preset per platform/target:
name, platform, output path, and options. **Commit it** — nothing secret lives
there. Secrets (signing keys, passwords) go in `.godot/export_credentials.cfg`,
which you **do not** commit.

The file format, a verified Linux/Windows desktop preset, and the per-platform
options are in `references/export_presets.md`. Presets are normally created in
the editor, but the file is plain text and editable directly.

## Exporting from the command line (verified)

```bash
# Editor binary (not an export template) + templates installed + a defined preset.
godot.sh --headless --export-release "Linux"   /abs/out/game.x86_64
godot.sh --headless --export-debug   "Windows" /abs/out/game.exe
godot.sh --headless --export-pack    "Linux"   /abs/out/game.pck   # pack only
```

- The preset name must match `export_presets.cfg` exactly (quote names with
  spaces, e.g. `"Windows Desktop"`).
- The **target directory must exist**; relative paths are relative to
  `project.godot`, not the cwd.
- `--headless` is required on machines without GPU/display (CI).
- A C# project: the assemblies are built into the export automatically, but run a
  `dotnet build` first to surface compile errors before the longer export.

`scripts/export.sh <projdir> <preset> <outpath> [release|debug|pack]` wraps this:
verifies templates exist, ensures the output dir, builds C#, then exports, and
reports the artifact. Use it in CI.

## CI build pipeline

A typical job: checkout → install .NET SDK + matching export templates →
`build_and_check.sh` (compiles, imports) → `run_tests.sh` (QA gate) →
`export.sh` per target → upload artifacts. The full CI shape (GitHub Actions
sketch, caching, headless requirements) is in `references/export_presets.md`.

## Packaging & patches

`--export-pack` produces a `.pck`/`.zip` (game data without the binary) — for
DLC, patches, or the dedicated-server "template + pck" approach.
`--export-patch` exports only changed files. Covered in
`references/export_presets.md`.

## Multiplayer / dedicated servers

Godot's high-level multiplayer (ENet transport, `[Rpc]` methods,
`MultiplayerSpawner`/`MultiplayerSynchronizer`) plus the dedicated-server build
(a desktop export run with `--headless` + Dummy audio — no special server binary
needed since 4.0). C# RPC patterns, authority, and the server-export preset are
in `references/multiplayer.md`. Networking is the Network Programmer's slice; if
the game is single-player, skip this reference entirely.

## Platform order (from the benchmark)

Ship **Steam (Windows + Linux) first**, then Switch 2, then Xbox/PS. Build and
test the desktop presets first; console exports need platform SDKs and
certification outside Godot's CLI. Don't over-invest in console export tooling
before the Steam build is solid.

## Verifying

You can author and validate `export_presets.cfg` and the export *command* without
templates, but a full binary export requires templates installed. `export.sh`
distinguishes "templates missing" (setup issue) from "export failed" (real
problem). After export, smoke-test the binary: run it `--headless --quit-after 5`
and check for errors (hand to `godot-qa-headless`).

## Troubleshooting

`references/export_presets.md` troubleshooting: "no export template found"
(install templates for the exact version), "preset not found" (name mismatch /
quoting), export succeeds but binary crashes (missing `dotnet`-built assemblies
— build first; `user://` save paths; absolute resource paths), web export fails
(C# limitation — expected), output path errors (dir must exist, relative to
project not cwd).
