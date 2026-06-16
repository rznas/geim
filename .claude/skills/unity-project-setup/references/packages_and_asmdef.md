# UPM packages (manifest.json) & assembly definitions (.asmdef)

Grounded in `references/api/upm-concepts.md`, `upm-manifestPrj.md`,
`assembly-definitions-intro.md`, `assembly-definition-file-format.md`,
`assembly-definitions-referencing.md`. Doc-sourced; not compile-tested here.

## The project manifest — `Packages/manifest.json`

From `upm-manifestPrj.md`: when Unity loads a project, the Package Manager reads
`Packages/manifest.json` to compute which packages to retrieve. It lives in the
`Packages/` folder at the project root and is JSON.

> **All properties are optional. However, if your project manifest file does not
> contain any values, the Package Manager window doesn't load, and the Package
> Manager doesn't load any packages.**

So you always ship at least a `dependencies` object. Keys:

| Key | Type | Notes |
|-----|------|-------|
| `dependencies` | object | `"<package name>": "<min version>"`. **Direct** dependencies only — indirect ones come from package manifests. |
| `enableLockFile` | bool | `true` by default — deterministic resolution via `packages-lock.json`. |
| `resolutionStrategy` | string | `lowest` (default), `highestPatch`, `highestMinor`, `highest` — how indirect deps are upgraded per SemVer. |
| `scopedRegistries` | array | Custom registries (host your own packages). |
| `testables` | array | Packages whose tests load in the Unity Test Framework. |
| `pinnedPackages` | array | Lock a package at the exact `dependencies` version even if another is "more compatible". Each must also appear in `dependencies`. |

A dependency value can be a registry version, a local path, a tarball, or a Git
URL (from the doc's own example):

```json
{
  "dependencies": {
    "com.unity.package-1": "1.0.0",
    "com.unity.my-local-package": "file:<path>/my_package_folder",
    "com.unity.my-local-tarball": "file:<path>/my_package_tarball.tgz",
    "com.unity.my-git-package": "https://my.repository/my-package.git#v1.2.3"
  },
  "enableLockFile": true,
  "resolutionStrategy": "highestMinor"
}
```

`scopedRegistries` example (verbatim):

```json
{
  "scopedRegistries": [{
    "name": "My internal registry",
    "url": "https://my.internal.registry.com",
    "scopes": ["com.company"]
  }]
}
```

**Embedded packages need no manifest entry.** From the doc: "You do not need to
specify embedded packages here because the Package Manager finds them inside your
project's `Packages` folder and loads them automatically." Drop a package folder
(with its own `package.json`) under `Packages/` and it's loaded.

### Package sources (`upm-concepts.md`)

Registry, Built-in, Embedded, Local (folder), Tarball (local), Git. Registry,
Built-in, and Tarball packages are **immutable** — you can use but not edit them.
Only Local and Embedded packages are editable. There are two manifest types:
the **project manifest** (`manifest.json`, above) and a **package manifest**
(`package.json`, inside a package).

The scaffold's `manifest.json` ships the core packages a fresh Unity 6 project
depends on (IDE integration, Test Framework, uGUI, and the always-on engine
modules). Add gameplay packages (Input System, Cinemachine, Netcode, etc.) by
adding entries here, then reopening / re-resolving.

## Assembly definitions — `.asmdef`

From `assembly-definitions-intro.md`: by default Unity compiles almost all game
scripts into one predefined assembly, **`Assembly-CSharp.dll`** (plus a few
specialized ones such as the Editor assembly). That's fine for small projects but
has drawbacks as code grows:

- changing one script recompiles **all** scripts (slow iteration);
- any script can reach any type (hard to refactor);
- all scripts compile for all platforms.

An **Assembly Definition** (`.asmdef`) carves a folder (and its subfolders) into
its own assembly. "Unity compiles all the scripts in a folder that contains an
Assembly Definition into a single assembly … The assembly includes any scripts
in subfolders unless a subfolder has its own Assembly Definition or Assembly
Reference asset." This shrinks recompile scope and enforces module boundaries.

### File format (`assembly-definition-file-format.md`)

An `.asmdef` is a JSON object. The only **required** field is `name`. Common
fields:

| Field | Default | Meaning |
|-------|---------|---------|
| `name` | required | Assembly name. Must be unique in the project. |
| `references` | `[]` | Other asmdefs this one depends on — **by name OR by `GUID:<guid>`** (use one form for all entries). |
| `includePlatforms` / `excludePlatforms` | `[]` | Restrict to / exclude platforms. The two arrays are mutually exclusive (one must be empty). |
| `allowUnsafeCode` | `false` | Enable `unsafe`. |
| `autoReferenced` | `true` | If `true`, the predefined assemblies auto-reference this one. |
| `overrideReferences` + `precompiledReferences` | `false` / `[]` | Reference precompiled DLLs by file name (set `overrideReferences` true). |
| `defineConstraints` | `[]` | Compile only when the given defines are set. |
| `versionDefines` | `[]` | Define a symbol based on a package version range. |
| `noEngineReferences` | `false` | If `true`, don't reference UnityEngine/UnityEditor. |

Minimal game-code asmdef (what the scaffold writes):

```json
{
    "name": "MyGame",
    "references": [],
    "includePlatforms": [],
    "excludePlatforms": [],
    "allowUnsafeCode": false,
    "overrideReferences": false,
    "precompiledReferences": [],
    "autoReferenced": true,
    "defineConstraints": [],
    "versionDefines": [],
    "noEngineReferences": false
}
```

### Referencing rules (`assembly-definitions-referencing.md`)

- The predefined assemblies auto-reference all asmdef-defined and precompiled
  assemblies. Custom asmdefs auto-reference all precompiled assemblies.
- **You cannot reference a predefined assembly (`Assembly-CSharp`) from a custom
  asmdef.** Once you start using asmdefs, code outside any asmdef (still in
  `Assembly-CSharp`) can't be seen by your asmdef assemblies — so a common pattern
  is "all gameplay code lives under one or more asmdefs."
- Turn off `autoReferenced` to stop the predefined assemblies recompiling when you
  edit this assembly (and to hide its API from them).

### The Editor-folder interaction (a real trap)

`assembly-definitions-intro.md`: scripts in a folder named `Editor` normally go
into `Assembly-CSharp-Editor`. **But if you add an `.asmdef` to a folder that has
an `Editor` subfolder, those Editor scripts get pulled into your new assembly
instead** — where they may reference `UnityEditor` APIs that don't exist at
runtime, breaking the build. Fix: give each `Editor` folder its own `.asmdef`
(with `includePlatforms: ["Editor"]`) so editor code stays in an editor-only
assembly. See `assembly-definitions-creating.md` for "Creating an assembly for
Editor code."

Every `.asmdef` is an asset, so it gets a `.meta` — commit both (see
`project_layout_and_meta.md`).
