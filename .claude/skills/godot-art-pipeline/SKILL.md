---
name: godot-art-pipeline
description: >
  Import and wire up art assets — 3D models, sprites, textures, animations — into
  a Godot 4.6 C# game. Use this whenever you are importing glTF/.glb/.obj models,
  PNG/sprite textures, or sprite sheets; configuring import settings (.import
  sidecars, mipmaps, filters, collision/material extraction on 3D scenes); setting
  up animation playback (AnimationPlayer, AnimatedSprite2D + SpriteFrames,
  AnimationTree state machines); building 3D levels from a MeshLibrary/GridMap; or
  driving animations from C#. Reach for it any time the task is "get this model/
  sprite/spritesheet into the game", "play the run animation", "blend walk into
  run", "the imported model is huge/dark/has no collision", or wiring AI-generated
  art (Meshy, ComfyUI output) into the engine. Covers 3D Modeler, Animator, and
  Technical Artist integration work. Assumes a buildable project
  (godot-project-setup); plays animations from C# via godot-gameplay-csharp idioms.
---

# Godot Art Pipeline (asset import & animation)

Getting external art into the engine correctly and making it move. The art is
made elsewhere (Blender, Meshy, ComfyUI, Aseprite); this skill is the bridge:
import config, animation wiring, and the C# that triggers it.

## How Godot import works (internalize this)

You drop a source file (`player.glb`, `hero.png`) into the project folder. Godot
imports it into a hidden cached form in `res://.godot/imported/` and writes a
sidecar **`<asset>.import`** file holding the settings.

Two rules that bite people:
- **Commit the `.import` files**, never the `.godot/` cache. The sidecar is the
  real, portable import config; the cache regenerates.
- **Load imported assets with `GD.Load`/`ResourceLoader`, not `FileAccess`.**
  `FileAccess` paths work in-editor but break in the exported build, because the
  source file isn't shipped — only the imported resource is.

Headless reimport: `scripts/godot.sh --headless --path <dir> --import`. This is
how you apply import settings and regenerate the cache in CI / from this agent.

The supported formats, per-type import options, and the exact `.import` sidecar
structure are in `references/import_system.md`. 3D uses **glTF (.glb/.gltf)** as
the preferred format — the reference covers scale, collision generation, and
material extraction.

## Animation: three systems, pick by need

| System | Use for | Drive from C# |
|--------|---------|----------------|
| `AnimatedSprite2D` + `SpriteFrames` | 2D frame-by-frame (sprite sheets) | `Play("run")`, `SpriteFrames` |
| `AnimationPlayer` | keyframed property animation (2D or 3D), imported clips | `Play("idle")`, `CurrentAnimation`, `AnimationFinished` |
| `AnimationTree` | blending, state machines (walk↔run, locomotion) | set conditions/blend params |

`references/animation.md` has the verified C# for all three: triggering clips,
awaiting `AnimationFinished`, building a SpriteFrames from a sheet, and the
AnimationTree state-machine + blend-space pattern. Imported glTF models bring
their own `AnimationPlayer` with the clips baked from Blender — you just `Play`
them by name.

## 3D levels from tiles (GridMap)

For modular 3D level building, a `MeshLibrary` (a palette of meshes, optionally
with collision/nav) feeds a `GridMap` node you paint or fill from C#. Covered in
`references/import_system.md` — useful for blockouts and tile-based 3D.

## Scaffolding

`scripts/check_assets.sh <projdir>` reports imported assets, flags source files
missing their `.import` sidecar, and runs a headless reimport so a fresh checkout
is import-clean. Run it after dropping in new art.

## Wiring AI-generated art

Meshy/Tripo → `.glb` → drop in, set scale, generate collision (see import ref).
ComfyUI/SD textures → PNG → import as Texture2D (disable mipmaps + filter off for
crisp pixel art; enable for smooth). The aesthetic decisions (does this art fit?)
belong to the design skill `applying-game-aesthetics`; this skill is the
mechanical integration.

## Troubleshooting

`references/troubleshooting.md`: imported model is huge/tiny (scale on import or
the source's unit), model is black (no material / wrong import material mode),
no collision (enable collision generation on the 3D import), pixel art is blurry
(mipmaps on / linear filter — switch to nearest), animation won't play (wrong
name, `AnimationPlayer` not found, autoplay not set), sprite sheet frames wrong
(SpriteFrames region/grid mismatch).
