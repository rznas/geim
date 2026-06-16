# Unity 6 project-setup troubleshooting

The handful of failures that account for almost every Unity setup problem.
Doc-sourced from the embedded Unity 6 manual; not compile-tested here (no Editor
installed).

## `unity.sh: no Unity 6 Editor found` (exit 127)

Expected in this environment — **no Editor is installed**, so `scripts/unity.sh`
can't run a real build. Everything in this skill is doc-sourced. To enable real
batchmode build / test verification:

```bash
# install Unity 6 (6000.x) via the Unity Hub, then:
export UNITY_PATH=/path/to/Hub/Editor/6000.x.y/Editor/Unity
scripts/unity.sh -version    # should print the version
```

The wrapper resolves `$UNITY_PATH` → Hub install dirs (`6000.*`) → `unity` on
PATH, in that order.

## Lost `.meta` files / broken references after a git operation

The single most damaging setup mistake. From `AssetMetadata.md`: every asset has
a `.meta` holding its GUID; **if an asset loses its `.meta`, every reference to it
breaks** — materials lose textures, GameObjects lose their script components.

Causes and fixes:

- **`.gitignore` ignores `*.meta`** — never do this. Confirm:
  `git check-ignore -v Assets/Scripts/Hello.cs.meta` should print nothing.
- **Moved/renamed an asset outside Unity without its `.meta`** — move/rename the
  `.meta` to match. Inside the Editor's Project window, Unity moves it for you.
- **Committed the asset but not its `.meta` (or vice versa)** — always stage both.
  `git status` should never show a `.cs` without its `.cs.meta`.
- After fixing, reopen in Unity; if references are still orphaned you must
  reassign them by hand (the lost GUID can't be recovered).

Keep Version Control mode on **Visible Meta Files** (the default —
`Versioncontrolintegration.md`) so git sees them.

## Committed `Library/` — repo is huge / merge conflicts in cache

`default-directories.md`: `Library/` is "a local cache of imported assets and
metadata … unique to your computer." Never commit it (nor `Temp/`,
`UserSettings/`, `Logs/`). If it's already tracked:

```bash
git rm -r --cached Library Temp UserSettings Logs
# ensure the .gitignore from assets/unity.gitignore is in place, then commit
```

You can safely **delete** `Library/` any time to fix a corrupt project — Unity
regenerates it on next open (or via `unity.sh ... -rebuildLibrary`). It's slow
(full reimport + recompile) so it's a last resort.

## `-batchmode` build "succeeds" but produced nothing / CI didn't catch the error

From `EditorCommandLineArguments.md`, a `-executeMethod` target that returns
normally exits **0** even if it built nothing. Make failure explicit: throw, or
call `EditorApplication.Exit(<non-zero>)`. Also:

- Under `-nographics`, "output logs are turned off" — add **`-logFile -`** to see
  anything on stdout.
- Don't combine `-quit` with `-runTests`: `-quit` "causes the Editor to quit
  immediately, before in-progress tests have chance to complete."
- The `-executeMethod` script **must be `static` and in an `Editor` folder/asmdef**
  (it uses `UnityEditor`, absent at runtime), or it won't compile / won't be found.

## asmdef reference errors — "The type or namespace name 'X' could not be found"

From `assembly-definitions-referencing.md`:

- **You cannot reference `Assembly-CSharp` from a custom asmdef.** If your asmdef
  code can't see a class, that class is probably loose in the predefined
  assembly. Move it under an asmdef and add the reference.
- A reference is missing from the `.asmdef`'s `references` array. Add the target
  by name (e.g. `"UnityEngine.UI"`) or by `GUID:<guid>` — but use one form
  consistently within the array.
- **An `.asmdef` dropped on a folder with an `Editor` subfolder** pulls those
  Editor scripts into the (runtime) assembly, so their `UnityEditor` calls fail
  to compile for Player builds. Give the `Editor` folder its own asmdef with
  `"includePlatforms": ["Editor"]`.
- `references` mixing names and GUIDs in the same array is invalid — pick one.

## Package Manager loads nothing / `manifest.json` errors

From `upm-manifestPrj.md`: "if your project manifest file does not contain any
values, the Package Manager window doesn't load, and the Package Manager doesn't
load any packages." So:

- Keep a valid `dependencies` object in `Packages/manifest.json` (the scaffold
  ships one). Validate JSON: `python3 -c "import json;json.load(open('Packages/manifest.json'))"`.
- A package fails to resolve → check the version exists in the registry, or
  switch the entry to a `file:` path / Git URL / tarball (all valid sources per
  `upm-concepts.md`).
- Force a clean package restore by deleting `Library/PackageCache` and
  reopening, or `unity.sh ... -rebuildLibrary`.
- For private/internal packages add a `scopedRegistries` block (see
  `packages_and_asmdef.md`).

## Wrong Editor version opens the project / upgrade prompt

`ProjectSettings/ProjectVersion.txt` pins the Editor version. The scaffold writes
a `6000.0.0f1` default (override via `UNITY_EDITOR_VERSION` when scaffolding);
the Hub rewrites it to the exact installed 6000.x patch on first open. Mismatched
versions across a team cause spurious reimports — agree on one 6000.x patch and
commit `ProjectVersion.txt`.

## Script won't attach as a component

The C# **class name must equal the file name** for a MonoBehaviour to be
attachable (the scaffold's `Hello.cs` → `class Hello`). It must derive from
`MonoBehaviour`. This is the Unity analogue of Godot's "Cannot find class" trap —
fix by renaming the file or the class to match.
