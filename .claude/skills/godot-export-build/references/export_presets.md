# Export presets, CLI & CI (Godot 4.6)

## export_presets.cfg format

Lives in the project root, commit it. One `[preset.N]` block per target plus a
matching `[preset.N.options]`. Verified shape for desktop targets:

```
[preset.0]

name="Linux"
platform="Linux"
runnable=true
export_filter="all_resources"
export_path="builds/game.x86_64"

[preset.0.options]

binary_format/embed_pck=false
texture_format/s3tc_bptc=true

[preset.1]

name="Windows Desktop"
platform="Windows Desktop"
runnable=true
export_path="builds/game.exe"

[preset.1.options]

application/icon="res://icon.svg"
application/product_name="My Game"
```

- **`name`** is what you pass to `--export-release`. Quote names with spaces.
- **`platform`** must match Godot's platform id: `Linux`, `Windows Desktop`,
  `macOS`, `Android`, `iOS`, `Web` (Web unusable for C#).
- **`export_path`** is relative to `project.godot`. Include the filename + ext.
- Secrets (keystore passwords, signing) live in
  `.godot/export_credentials.cfg` — **do not commit**.

Presets are usually created in the editor (Project → Export), but this file is
plain text; you can author it directly and then export headlessly.

## Export CLI

```bash
# Needs: editor binary (not template), templates installed, dir exists.
godot.sh --headless --export-release "Linux"           "$PWD/builds/game.x86_64"
godot.sh --headless --export-debug   "Windows Desktop" "$PWD/builds/game.exe"
godot.sh --headless --export-pack    "Linux"           "$PWD/builds/game.pck"
godot.sh --headless --export-patch   "Linux"           "$PWD/builds/patch.pck"
```

`--export-pack` = data only (no engine binary); `--export-patch` = changed files
only. Exit code is non-zero on failure — usable as a CI gate.

## Export templates (the common blocker)

Templates are version-specific (`4.6.3.stable.mono`) and **not bundled** with the
editor. Install one of:
- Editor → **Manage Export Templates** → Download.
- Place the `.tpz` (rename to `.zip`, extract) into
  `~/.local/share/godot/export_templates/4.6.3.stable.mono/` (Linux).
- `godot.sh --headless --install-android-build-template` for Android specifically.

`--export-release` without templates fails: *"No export template found at the
expected path."* That's a setup issue, not a project bug.

## CI build (GitHub Actions sketch)

```yaml
jobs:
  build:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
      - uses: actions/setup-dotnet@v4
        with: { dotnet-version: '8.0.x' }
      - name: Get Godot + templates
        run: |
          # download the 4.6.3 mono editor + matching export templates,
          # place templates in ~/.local/share/godot/export_templates/4.6.3.stable.mono/
      - name: Build & test
        run: |
          ./build_and_check.sh .        # compiles + imports
          ./run_tests.sh .              # QA gate
      - name: Export Linux
        run: |
          mkdir -p builds
          godot --headless --path . --export-release "Linux" "$PWD/builds/game.x86_64"
      - uses: actions/upload-artifact@v4
        with: { name: linux-build, path: builds/ }
```

Headless is mandatory on CI (no display). Cache the editor + templates between
runs to save the large download.

## Troubleshooting

- **"No export template found"** → install templates for the exact version
  string (`godot --version`).
- **"Export preset X not found"** → name mismatch or unquoted spaces. Match
  `export_presets.cfg` exactly.
- **Output path error** → the target directory must exist; `export_path` is
  relative to `project.godot`, not the shell cwd.
- **Binary runs but crashes / no C#** → run `dotnet build` before exporting so
  assemblies are current; ensure saves use `user://`, not `res://`.
- **Web export fails for C#** → expected; Godot 4 can't export C# to web. Use a
  desktop target.
