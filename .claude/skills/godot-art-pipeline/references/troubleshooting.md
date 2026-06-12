# Art pipeline troubleshooting (Godot 4.6)

## Imported model is gigantic or tiny

Unit mismatch. Set the import **Scale** in the 3D import dock (or `.import`
params), or fix the export unit in Blender (apply scale, export in meters). glTF
is meters; a Blender export at the wrong unit is the usual culprit.

## Imported model is black / untextured

- Materials didn't come through — check the import's material mode; try
  extracting materials to `.tres` and inspect them.
- No light in the scene — even correct materials render dark without a
  `DirectionalLight3D` / environment. Add lighting (see graphics skill).
- glTF with external textures: ensure the texture files imported too (the `.glb`
  binary embeds them; loose `.gltf` references separate files that must be present).

## Imported level/model has no collision

3D imports don't generate collision by default. In the import dock, enable
collision per mesh node (trimesh static body for level geometry, convex for
props), then reimport. Without it, characters walk through everything.

## Pixel art is blurry

Mipmaps and/or linear filtering. Turn **mipmaps off** and set the texture filter
to **nearest** (per-texture import, or project-wide
`rendering/textures/canvas_textures/default_texture_filter = Nearest`).

## Animation won't play

- Name mismatch — `Play("Run")` vs an animation actually named `"run"`
  (case-sensitive). List names: iterate `anim.GetAnimationList()`.
- Wrong node — the `AnimationPlayer` is a child of the imported model, not where
  you looked. Imported glTF puts it under the model root.
- Nothing autoplays — set Autoplay, or call `Play` in `_Ready`.
- AnimationTree is `Active` — when an AnimationTree drives the player, calling
  `AnimationPlayer.Play` directly is overridden; drive the tree instead.

## Sprite sheet frames are wrong / scrambled

The SpriteFrames grid (h-frames, v-frames, region) doesn't match the sheet's
layout. Re-slice with the correct cell size and frame count; check for padding
between cells.

## `FileAccess` works in editor but breaks in export

You loaded an imported asset by raw file path. Imported assets aren't shipped as
their source files — load through `GD.Load`/`ResourceLoader` with the `res://`
path of the *source* (Godot redirects to the imported cache). Reserve
`FileAccess` for genuinely non-imported data files.

## Changes to art don't show up

Stale import cache. Reimport: `--headless --path <dir> --import`, or delete
`res://.godot/imported/` to force a full rebuild. Godot auto-reimports when the
source file's MD5 changes, but a forced reimport resolves edge cases.
