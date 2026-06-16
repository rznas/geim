---
name: unity-art-pipeline
description: >
  Import and wire up art assets — 3D models, sprites, textures, animations — into
  a Unity 6 (6000.x) C# game. Use this whenever you are importing FBX/glTF/.obj
  models or PNG/texture/sprite-sheet images; configuring import settings (the
  `.meta` sidecar, model scale factor, mesh collider generation, material
  extraction, Rig/Avatar setup, texture filter/mipmaps, sprite Multiple-mode
  slicing); setting up a Mecanim Animator Controller (states, transitions,
  parameters, blend trees); driving animation from C#
  (`animator.SetFloat/SetBool/SetTrigger/Play/CrossFade`); building 2D scenes with
  SpriteRenderer or painting Tilemaps; or sculpting Terrain. Reach for it any time
  the task is "get this model/sprite/spritesheet into the game", "play the run
  animation", "blend walk into run", "the imported model is huge/tiny", "no
  collision on the imported mesh", "the texture is pink/missing", "the references
  to my asset all broke", "slice this sprite sheet", or wiring AI-generated art
  (Meshy, ComfyUI/SD output) into the engine. Covers 3D Modeler, Animator, and
  Technical Artist integration work. Assumes a buildable project
  (unity-project-setup); drives animation from C# via unity-gameplay-csharp idioms.
---

# Unity Art Pipeline (asset import & animation)

The art is made elsewhere (Blender, Maya, Meshy, ComfyUI, Aseprite). This skill is
the bridge into Unity 6: import configuration, the Mecanim Animator, and the C#
that drives it. The art-direction call ("does this art fit?") belongs to the design
skill `applying-game-aesthetics` — this skill is the mechanical integration.

## The one thing that trips everyone up: the `.meta` file + GUID

When you drop a source file (`hero.fbx`, `tiles.png`) into the project's `Assets`
folder, Unity imports it and writes a sidecar **`<asset>.meta`** file right next to
it. That `.meta` file holds **all of the asset's import settings AND a stable GUID**
that every reference in your project (scenes, prefabs, materials) uses to point at
this asset. From `references/api/AssetImporter.md` (verbatim):

> Each asset imported into the project is linked to a corresponding asset importer
> object… These settings are stored in the `.meta` file… located adjacent to the
> source asset file.

Three rules that follow, and that bite everyone:

1. **Commit the `.meta` files.** They are the real, portable import config. The
   `Library/` folder (the internal cache Unity builds from the source + `.meta`) is
   **not** committed — it regenerates. Per `references/api/ImportingAssets.md`:
   "you don't need to include the `Library` folder under version control." So your
   `.gitignore` ignores `Library/` but **never** `*.meta`.
2. **Deleting a `.meta` loses the import config AND breaks every reference.** Without
   the `.meta`, Unity re-imports with default settings and **mints a new GUID** — so
   every scene/prefab/material that referenced the asset now points at nothing
   (missing-reference / pink material / null sprite). The GUID is what wires assets
   together; lose it and the wiring snaps.
3. **Move/rename assets *inside Unity's Project window*, not in the OS file browser.**
   Unity then carries the `.meta` along automatically (`ImportingAssets.md`):
   "Unity then automatically moves or renames the asset's corresponding `.meta`
   file." Move the source file alone in Finder/Explorer and you orphan its `.meta`.

You can check for a missing `.meta` from script via
`AssetImporter.importSettingsMissing` ("true when no meta file is provided with the
imported asset" — `references/api/AssetImporter-importSettingsMissing.md`).

## The second thing: you drive animation through *parameters*, not clips

In Mecanim you do **not** "play the run clip" from C#. You attach an **Animator**
component with an **Animator Controller** (a state machine of clips + transitions),
expose **parameters** on that controller, and from C# you set those parameters. The
controller's transitions and blend trees decide which clip plays. From
`references/api/AnimationParameters.md`:

> Animation Parameters are variables… defined within an Animator Controller that
> can be accessed and assigned values from scripts. This is how a script can control
> or affect the flow of the state machine.

Four parameter types: **Float, Int, Bool, Trigger** (a Trigger is a bool the
controller auto-resets once a transition consumes it). Set them with
`SetFloat / SetInteger / SetBool / SetTrigger / ResetTrigger`.

Verbatim from `references/api/AnimationParameters.md`:

```csharp
using UnityEngine;
using System.Collections;

public class SimplePlayer : MonoBehaviour {

    Animator animator;

    void Start () {
        animator = GetComponent<Animator>();
    }

    void Update () {
        float h = Input.GetAxis("Horizontal");
        float v = Input.GetAxis("Vertical");
        bool fire = Input.GetButtonDown("Fire1");

        animator.SetFloat("Forward",v);
        animator.SetFloat("Strafe",h);
        animator.SetBool("Fire", fire);
    }

    void OnCollisionEnter(Collision col) {
        if (col.gameObject.CompareTag("Enemy"))
        {
            animator.SetTrigger("Die");
        }
    }
}
```

The parameter **string names must match the controller exactly** (case-sensitive).
A mismatch (or a parameter no transition references) compiles fine and silently does
nothing — that's the #1 "my animation won't play". Cache names as hashes with
`Animator.StringToHash` to avoid the cost of re-hashing every frame
(`references/api/Animator.StringToHash.md`).

`scripts/new_animator_driver.sh <ClassName> [dir]` scaffolds exactly this — a
locomotion driver that pushes Float/Bool/Trigger params each frame (smoke-tested:
generates the `.cs`, rejects invalid class names). Depth and the SetFloat damped
overload, `SetTrigger`/`ResetTrigger`, `CrossFade`, `Play(stateHash)`, and
`GetCurrentAnimatorStateInfo(0).IsName(...)` are in `references/animation_mecanim.md`.

## Importing models (FBX is primary; glTF/OBJ supported)

Unity's primary 3D format is **FBX**; it also reads native DCC files (`.blend`,
`.max`, `.ma`) by invoking the installed tool's FBX exporter — best practice is to
export FBX (or glTF) directly into `Assets/` (`references/api/ImportingModelFiles.md`).
Import settings are edited per-asset in the Inspector (and scriptable via
`ModelImporter` — `references/api/ModelImporter.md`). The settings that matter:

- **Scale** — `globalScale` / `useFileScale` / `fileScale`. The classic "model is
  100× too big or tiny" is a unit mismatch (the source was in cm vs m). Fix on
  import, don't rescale the Transform.
- **Generate Colliders** — `addCollider` ("Add mesh colliders to imported meshes").
  Off by default, so a fresh import has **no collision**.
- **Rig / Avatar** — `animationType` is one of `None / Legacy / Generic / Human`
  (`references/api/ModelImporterAnimationType.md`). **Humanoid rigs need an
  Avatar** (set Animation Type = Humanoid on the Rig tab so Unity maps the bones);
  that Avatar is what lets you retarget one humanoid's clips onto another model.
  Generic rigs just need a Root node. See `references/api/FBXImporter-Rig.md`.
- **Materials / textures** — extracted as separate assets; Unity searches a
  `Textures/` subfolder first, then the whole project.

Full settings, the `.meta` structure, GUIDs, and headless reimport are in
`references/import_pipeline_and_meta.md`.

## Sprites, sprite sheets, and Tilemaps (2D)

A `TextureImporter` with **`textureType = Sprite`** turns a PNG into sprite(s). For
a **sprite sheet**, set `spriteImportMode = SpriteImportMode.Multiple` and slice it
(grid or automatic) in the Sprite Editor — each slice becomes its own `Sprite`
sub-asset (`references/api/SpriteImportMode.Multiple.md`,
`TextureImporter-spriteImportMode.md`). A `SpriteRenderer` draws one
(`spriteRenderer.sprite = ...`, verbatim in `references/api/SpriteRenderer.md`).

For pixel art keep it crisp: `filterMode = Point` and `mipmapEnabled = false`; for
smooth art use bilinear + mipmaps. `Tilemap.SetTile(position, tile)` paints a tile
into a cell from C# (`references/api/Tilemaps.Tilemap.SetTile.md`). Full sprite
+ tilemap detail: `references/sprites_and_tilemaps.md`.

## Wiring AI-generated art

Meshy/Tripo → FBX/glTF → drop in `Assets/`, fix scale, enable Generate Colliders.
ComfyUI/SD textures → PNG → import as Texture (Default), or as Sprite for 2D; set
filter/mipmaps per the pixel-art-vs-smooth rule above. Commit the `.meta` files that
appear.

## Troubleshooting

`references/troubleshooting.md` covers: model huge/tiny (scale factor / units),
no collision on import (`addCollider` off), animation won't play (wrong parameter
name, no transition condition, no Avatar on a humanoid), pink/missing texture
(material extraction / lost reference), broken references everywhere (deleted/orphaned
`.meta` → new GUID), humanoid retarget issues (Avatar not configured).

## What this covers / hands off to

- **Covers:** 3D Modeler, Animator, and Technical Artist integration work — getting
  external art into Unity correctly and making it move from C#.
- **Aesthetic / art-direction decisions →** `applying-game-aesthetics` (design).
- **Gameplay logic that calls `SetTrigger` etc. →** `unity-gameplay-csharp`.
- **Movement/collision that feeds the `Speed`/`Grounded` params →** `unity-physics-and-ai`.
- **Shaders/materials/VFX on these assets →** `unity-graphics-shaders`.
- **Project scaffold / build / `.gitignore` →** `unity-project-setup`, `unity-build-deploy`.
- **Verifying it actually animates headlessly →** `unity-qa-testing`.

Unity 6 / 6000.x. Snippets are **doc-sourced from the embedded Unity 6
ScriptReference (`references/api/`), not compile-tested in this environment (no
Editor installed)** — they are Unity's own example code where possible. Run a real
build/PlayMode test via `scripts/unity.sh` (needs an installed Editor) to verify.
