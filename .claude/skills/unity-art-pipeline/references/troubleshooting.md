# Troubleshooting: art import & animation

Unity 6 (6000.x). The handful of failures that account for most art-pipeline pain.
Grounded in the embedded `references/api/` pages; not compile-tested here.

## Imported model is huge / tiny

**Symptom:** the FBX/glTF comes in 100× too big or microscopic.
**Cause:** unit mismatch — the DCC exported in centimetres while Unity treats 1 unit as
1 metre (or vice-versa). (`ModelImporter` scale props,
`references/api/ModelImporter-globalScale.md` / `useFileScale.md` /
`ModelImporter.md` → `useFileUnits`: "import as 1cm = 1UnityUnit" otherwise.)
**Fix:** on the model's **Model** import tab adjust **Scale Factor** (`globalScale`) or
toggle **Use File Scale** (`useFileScale`) / **Convert Units**, then re-import. **Do NOT
rescale the Transform** in the scene — that breaks physics, child offsets, and every
instance of the prefab. 1 Unity unit = 1 metre by convention.

## No collision on the imported mesh (things pass through it)

**Symptom:** the player/projectile goes straight through the imported geometry.
**Cause:** `ModelImporter.addCollider` ("Add mesh colliders to imported meshes") is
**off by default** (`references/api/ModelImporter-addCollider.md`). A fresh import
has no collider.
**Fix:** enable **Generate Colliders** on the Model tab (or `importer.addCollider =
true; importer.SaveAndReimport();`). For moving/perf-sensitive objects prefer a
primitive collider (Box/Capsule) added in the scene over a mesh collider. The collision
*layers/masks* that decide what actually collides are `unity-physics-and-ai`.

## Animation won't play

The big one. Usually one of these, in order of frequency:

1. **Parameter name mismatch.** `SetBool("Run", true)` does nothing if the controller's
   parameter is `"run"` or `"IsRunning"`. Names are **case-sensitive** and must match
   exactly. (`references/api/AnimationParameters.md`: "the name or ID number must
   be the same as the parameter you want to change in the Animator.")
2. **No transition condition uses the parameter.** Setting a parameter only matters if a
   transition (or blend tree) references it. A `Jump` trigger with no transition gated on
   it fires into the void.
3. **No Animator Controller assigned**, or no **clip** in the target state.
4. **Humanoid clip but no/invalid Avatar.** Humanoid animation needs the model's
   Animation Type = Humanoid with a configured Avatar; an unmapped/invalid Avatar makes
   the clip do nothing or T-pose. (`references/api/FBXImporter-Rig.md`,
   `AvatarCreationandSetup.md`.)
5. **You called `Play("Run")` without the layer name.** `Animator.Play` /
   `CrossFade` expect `"Base Layer.Run"`, not `"Run"`
   (`references/api/Animator.Play.md`).
6. **Animator is culled / object off-screen** with `cullingMode = CullCompletely` — it
   won't update while invisible.

Verify which state is actually playing:
`m_Animator.GetCurrentAnimatorStateInfo(0).IsName("Run")`
(`references/api/Animator.GetCurrentAnimatorStateInfo.md`).

## Pink / magenta or missing texture

**Symptom:** the model or sprite renders solid pink/magenta, or the material slot is
empty.
**Causes & fixes:**
- **Pink = shader can't render** (often a Built-in shader on a URP project, or a broken
  shader reference). Reassign a URP-compatible material/shader — this is
  `unity-graphics-shaders`.
- **Texture not found on import.** Unity searches a `Textures/` subfolder by the mesh
  first, then the whole project (`references/api/ImportingModelFiles.md`); a
  same-named texture elsewhere can be picked wrongly. Keep textures in a `Textures/`
  folder beside the model.
- **Materials not extracted.** On the model's **Materials** tab, set the material
  creation/location mode and **Extract Materials/Textures** so they become real assets
  you can edit and reference.
- **Wrong color space on a data texture.** A normal map / mask imported as sRGB
  (`sRGBTexture = true`) looks wrong; data textures should be linear.

## Every reference to an asset suddenly broke (missing references everywhere)

**Symptom:** scenes/prefabs show "Missing", sprites go null, materials unassign — across
the project, after a file operation or a git mishap.
**Cause:** the asset's **`.meta` was deleted or orphaned**, so Unity re-imported with a
**new GUID**, and every reference that stored the old GUID now points at nothing. The
`.meta` holds the import settings *and* the GUID that wires assets together
(`references/api/AssetImporter.md`).
**Fix / prevention:**
- **Commit every `*.meta`.** Ignore `Library/` (it regenerates —
  `references/api/ImportingAssets.md`), never `*.meta`.
- **Move/rename assets in Unity's Project window**, not the OS file browser, so Unity
  carries the `.meta` along (`ImportingAssets.md`).
- If you still have the old `.meta` in git history, restore it to recover the GUID.
- Detect orphans from script: `AssetImporter.importSettingsMissing`
  (`references/api/AssetImporter-importSettingsMissing.md`).
- See `import_pipeline_and_meta.md` for the full model.

## Humanoid retarget issues (clip looks wrong on another character)

**Symptom:** a humanoid clip plays on a different model but the pose is broken,
twisted, or feet slide.
**Causes & fixes** (`references/api/FBXImporter-Rig.md`,
`AvatarCreationandSetup.md`):
- **Avatar not configured / bad bone mapping.** Open **Configure** on the Rig tab and
  verify every required humanoid bone is mapped (and only those). Unmapped or
  mis-mapped bones distort retargeting.
- **Mixed rig types.** Both the clip's source model and the target must be Animation
  Type = **Humanoid** to retarget. Generic ↔ Humanoid does not retarget.
- **Different proportions without an Avatar** — the whole point of the Avatar is to
  normalize proportions; without per-model Avatars you can't share clips.
- **Root motion mismatch** — if motion comes from root, ensure `applyRootMotion` and the
  in-place/root settings agree between source and target.

## Sprite sheet frames are offset / sliced wrong

**Symptom:** sliced sprites show half-frames or are misaligned.
**Cause:** the slice grid (cell size/count) doesn't match the sheet, or there's
padding/margin between frames not accounted for.
**Fix:** in the Sprite Editor, re-slice with Grid By Cell Size (matching the real cell
dimensions) or Grid By Cell Count, and set the padding/offset; confirm
`spriteImportMode = Multiple` (`references/api/SpriteImportMode.Multiple.md`). See
`sprites_and_tilemaps.md`.

## Pixel art looks blurry

**Symptom:** crisp pixel art renders muddy/soft.
**Cause:** default texture import uses bilinear filtering + mipmaps.
**Fix:** `filterMode = FilterMode.Point` and `mipmapEnabled = false` on the
`TextureImporter` (`references/api/TextureImporter-filterMode.md`,
`TextureImporter-mipmapEnabled.md`); also avoid block compression on small
pixel-art sheets. Set `spritePixelsPerUnit` to the art's true tile size (e.g. 16).
