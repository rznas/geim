# Godot import system & 3D pipeline (4.6)

## The .import sidecar

Every importable source file gets a sibling `<file>.import` after first import.
It's an INI-style file holding the importer + parameters:

```
[remap]
importer="texture"
type="CompressedTexture2D"
uid="uid://abc123"
path="res://.godot/imported/hero.png-<hash>.ctex"

[deps]
source_file="res://art/hero.png"

[params]
compress/mode=0
mipmaps/generate=false
detect_3d/compress_to=0
```

- Commit `.import` files; ignore `.godot/`.
- To change settings headlessly, edit `[params]` and reimport
  (`--headless --import`). The keys mirror the editor's Import dock.

## Textures / images

Importer `texture`. Settings that matter:
- **`mipmaps/generate`** — on for 3D/zoomed-out, off for crisp 2D.
- **Filter** (project- or texture-level) — `nearest` for pixel art, `linear`
  for smooth. Blurry pixel art = linear filter; switch to nearest.
- **`compress/mode`** — lossless for UI, VRAM-compressed for big 3D textures.

Load: `var tex = GD.Load<Texture2D>("res://art/hero.png");`

## 3D models — glTF preferred

Supported: **glTF 2.0 (`.glb` binary / `.gltf`)** — the recommended interchange
format — plus `.obj`, `.fbx` (via import), and Blender `.blend` (if Blender is
configured). Prefer `.glb`: single file, materials + animations baked in.

A 3D source imports as a **PackedScene** (a whole node subtree: MeshInstance3D
nodes, an AnimationPlayer if it has clips, skeletons for rigged models). Key
import options (in the 3D import dock / `.import [params]`):
- **Scale** — fix huge/tiny models here, or set the unit in the DCC tool. glTF
  is meters; Blender default export is usually fine.
- **Collision generation** — per-node, generate a static collision shape
  (trimesh for level geometry, convex/box for props). Without this an imported
  level has **no collision**.
- **Material extraction** — keep embedded, or extract to editable `.tres` files
  so you can tweak/replace them.
- **Root type / script** — make the imported root a custom node type or attach a
  script (node_type_customization).

Use the imported scene by instancing it like any PackedScene:
```csharp
var model = GD.Load<PackedScene>("res://models/player.glb").Instantiate<Node3D>();
AddChild(model);
var anim = model.GetNode<AnimationPlayer>("AnimationPlayer");
anim.Play("Idle");   // clips come from the glTF
```

## GridMap + MeshLibrary (tile-based 3D)

A `MeshLibrary` is a palette resource of meshes (each with optional collision &
nav). A `GridMap` node places them on a 3D grid. Build a MeshLibrary by
exporting a scene of meshes to one (editor: Scene → Convert To → MeshLibrary),
then assign it to a GridMap. From C#:

```csharp
gridMap.SetCellItem(new Vector3I(x, 0, z), itemId);   // place a tile
int id = gridMap.GetCellItem(new Vector3I(x, 0, z));
```

Good for blockouts and modular dungeons; meshes carry their own collision from
the library.

## Always reimport after dropping in art

`scripts/godot.sh --headless --path <dir> --import` regenerates the cache and
applies import settings. A missing `.import` sidecar means the asset has never
been imported — running `--import` creates it.
