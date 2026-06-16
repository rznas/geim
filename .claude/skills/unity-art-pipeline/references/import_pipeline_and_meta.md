# Import pipeline, `.meta` files, and GUIDs

Unity 6 (6000.x). Grounded in the embedded `references/api/` pages; not
compile-tested here (no Editor installed).

## How import works (the big picture)

Source: `references/api/ImportingAssets.md`, `AssetImporter.md`.

1. You put a source file in `Assets/` (export or copy it there; or drag into the
   Project window, which copies it in).
2. Unity **imports** it: it reads the source, applies the import settings, and writes
   an internal representation into the `Library/` folder (a cache). The **source file
   is never modified.**
3. Unity writes a sidecar **`<asset>.meta`** next to the source, holding the import
   settings + a stable GUID.
4. Change the source or the import settings → Unity re-imports automatically.

```
Assets/
  hero.fbx          <- source (committed)
  hero.fbx.meta     <- import settings + GUID (COMMITTED — do not lose)
  tiles.png
  tiles.png.meta
Library/            <- internal cache (NOT committed, regenerates)
```

> **Tip** (from `ImportingAssets.md`): "If your project isn't open, you can
> safely delete the `Library` folder, because Unity can regenerate all its data from
> the `Assets` and `ProjectSettings` folders the next time you launch your project."

So a correct `.gitignore` ignores `Library/` (and `Temp/`, `Obj/`, `Logs/`) but
**commits every `*.meta`**. (Project scaffolding / `.gitignore` is `unity-project-setup`.)

## The `.meta` file and the GUID — why losing it is catastrophic

From `references/api/AssetImporter.md` (verbatim):

> Each asset imported into the project is linked to a corresponding asset importer
> object. This object provides access to the settings applied during the asset import
> process. These settings are stored in the `.meta` file, are located adjacent to the
> source asset file. They encompass asset bundle information, custom user data, and any
> external objects upon which the asset relies.

The `.meta` contains a **GUID** (globally unique id). Every reference in the project
— a scene that places the prefab, a material that uses the texture, a prefab that
references a sprite — stores the *GUID*, not the path. That is how Unity keeps links
intact when you move/rename files.

**If the `.meta` is deleted or orphaned:**
- The import settings are lost (Unity re-imports with defaults — wrong scale, no
  colliders, wrong texture type, etc.).
- Unity mints a **new GUID** on re-import. Every reference that used the old GUID now
  resolves to nothing → "missing reference", pink/missing material, null sprite,
  empty prefab slot, across the whole project.

This is why `.meta` files are committed and treated as load-bearing source.

**Move/rename inside Unity, not the OS.** From `ImportingAssets.md`:

> If you want to move or rename assets in your project, it's best practice to do it in
> the Project window. Unity then automatically moves or renames the asset's
> corresponding `.meta` file.

Move only the source in Finder/Explorer and the `.meta` is orphaned → same breakage.

**Detect a missing `.meta` from script** (`AssetImporter-importSettingsMissing.md`,
"The value is true when no meta file is provided with the imported asset"):

```csharp
using UnityEngine;
using UnityEditor;

public class ImportSettingsMissingExample : MonoBehaviour
{
    [MenuItem("Tools/ImportSettingsMissingExample")]
    static void Example()
    {
        var importers = AndroidAssetPackImporter.GetAllImporters();
        foreach (var importer in importers)
        {
            if (importer.importSettingsMissing)
            {
                AssetDatabase.ImportAsset(importer.assetPath, ImportAssetOptions.ForceUpdate);
                Debug.Log($"Import settings were missing for: {importer.assetPath}. Re-imported.");
            }
        }
    }
}
```

## Editing import settings from script — `AssetImporter` / `ModelImporter` / `TextureImporter`

All importers derive from `AssetImporter` (`references/api/AssetImporter.md`).
Get one with `AssetImporter.GetAtPath(path)`, cast to the concrete type, change
properties, then **`SaveAndReimport()`** to apply and re-import.

```csharp
// Pattern (doc-sourced from AssetImporter.md: GetAtPath + SaveAndReimport).
var importer = (ModelImporter)AssetImporter.GetAtPath("Assets/hero.fbx");
importer.globalScale = 1f;          // see scale section below
importer.addCollider = true;        // generate mesh colliders
importer.animationType = ModelImporterAnimationType.Human; // humanoid -> needs Avatar
importer.SaveAndReimport();
```

These editor-only APIs live in `UnityEditor` and run inside the Editor (e.g. an
`AssetPostprocessor` or a menu item), not in a shipped build.

## Model import (FBX / glTF / native DCC) — `ModelImporter`

Source: `references/api/ModelImporter.md`, `ImportingModelFiles.md`,
`FBXImporter-Rig.md`, `class-FBXImporter.md`.

- **Primary format: FBX.** Unity also reads native files (`.blend`, `.max`, `.ma`,
  `.mb`) by calling the installed DCC's FBX exporter — so the tool must be installed.
  Best practice: export FBX (or glTF) straight into `Assets/`.
- A single model file can produce **multiple assets**: meshes, an Avatar, several
  AnimationClips, extracted materials and embedded textures.

### Scale (the huge/tiny model fix)

| Property | Meaning |
| --- | --- |
| `globalScale` | "Global scale factor for importing." |
| `useFileScale` | "Whether or not to apply `fileScale` when importing." |
| `fileScale` | scaling factor used when `useFileScale` is true (read-only). |
| `useFileUnits` | "Detect file units and import as 1 FileUnit = 1 UnityUnit, otherwise import as 1cm = 1 UnityUnit." |

If a model imports 100× too large/small it is almost always a **unit mismatch** (the
DCC exported centimetres while Unity expects metres, or vice-versa). Fix it on the
importer — do **not** rescale the Transform in the scene (that breaks physics, child
offsets, and instances). 1 Unity unit = 1 metre by convention.

### Collision

`addCollider` — "Add mesh colliders to imported meshes." **Off by default**, so a
freshly imported mesh has no collider and things pass through it. Enable it (or add a
primitive collider in the scene — cheaper than a mesh collider). The collision *layers*
that decide what hits what are `unity-physics-and-ai`.

### Rig & Avatar (animation)

`animationType` (`ModelImporterAnimationType`): `None / Legacy / Generic / Human`.

- **Human (Humanoid):** Unity builds an **Avatar** that maps the model's bones onto a
  standard humanoid skeleton. The Avatar is **required** for humanoid clips and is what
  makes **retargeting** possible (play one humanoid's animation on a different humanoid
  model). Set Rig tab → Animation Type = Humanoid; Unity usually auto-maps, but you may
  need to open **Configure** to fix the mapping. (`FBXImporter-Rig.md`.)
- **Generic:** non-humanoid rig (quadruped, machine). No Avatar mapping; you just pick a
  **Root node** so Unity can separate root motion from bone motion.
- **Legacy:** old `Animation` component system — avoid for new work.
- **None:** no animation imported.

Related properties: `avatarSetup`, `sourceAvatar` (copy an Avatar from another model
with an identical rig), `humanDescription`, `optimizeGameObjects` (folds the bone
hierarchy into the Avatar for performance).

### Materials & textures

On import, embedded materials/textures are extracted as separate assets. Unity's
texture search (`ImportingModelFiles.md`): it looks in a `Textures/` subfolder in
the mesh's folder or a parent first, then does an exhaustive project-wide search (which
can grab the wrong texture if two share a name). Keep a `Textures/` folder beside the
model to be deterministic.

## Texture import — `TextureImporter`

Source: `references/api/TextureImporter.md`, `TextureImporterType.md`,
`class-TextureImporter.md`.

Key properties:
- `textureType` (`TextureImporterType`): `Default`, `NormalMap`, `GUI`, `Sprite`,
  `Cursor`, `Cookie`, `Lightmap`, `SingleChannel`, … Pick `Sprite` for 2D sprites,
  `NormalMap` for normal maps (so Unity packs them correctly), `Default` for albedo.
- `sRGBTexture` — albedo/color textures are sRGB (true); data textures (normal maps,
  masks, roughness) should be **linear** (`sRGBTexture = false`) or they look wrong.
- `filterMode`, `mipmapEnabled`, `wrapMode`, `maxTextureSize`, `textureCompression` —
  the look/size knobs (see `sprites_and_tilemaps.md` for the pixel-art settings).
- `spriteImportMode`, `spritePixelsPerUnit`, `spriteBorder`, `spritePivot` — sprite-specific.

```csharp
var ti = (TextureImporter)AssetImporter.GetAtPath("Assets/wall_albedo.png");
ti.textureType = TextureImporterType.Default;
ti.sRGBTexture = true;          // color/albedo -> sRGB
ti.SaveAndReimport();
```

## Headless reimport (CI / from this agent)

To apply import settings / regenerate the cache without opening the GUI, run the Editor
in batch mode through the shared wrapper (no Editor is installed in *this* environment,
so the wrapper exits 127 with install instructions — see `_tools/unity.sh`):

```bash
scripts/unity.sh -batchmode -nographics -quit -projectPath <projectDir> -importPackage <...>
# or run a -executeMethod that calls AssetDatabase.ImportAsset(...) / Refresh()
```

`scripts/unity.sh` only resolves a real Unity 6 binary via `$UNITY_PATH` / Unity Hub /
PATH. Until an Editor is installed, treat all of the above as doc-sourced.
