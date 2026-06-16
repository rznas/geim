<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ModelImporterClipAnimation.ConfigureMaskFromClip.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| mask | AvatarMask to which the masking values will be saved. |

### Description

Copy the current masking settings from the clip to an AvatarMask.

When writing an AssetPostprocessor, use this method to copy the AvatarMask from your clip configuration so that you can modify it.

Note: you will need to use ModelImporterClipAnimation.ConfigureClipFromMask to apply the AvatarMask back on the ModelImporterClipAnimation

See also: ModelImporterClipAnimation.ConfigureClipFromMask.

```csharp
using UnityEditor;
using UnityEngine;public class CopyAvatarMask : AssetPostprocessor
{
    void OnPreprocessAnimation()
    {
        var modelImporter = assetImporter as ModelImporter;        //Create a new AvatarMask to edit the mask
        var mask = new AvatarMask();
        var clips = modelImporter.clipAnimations;        //Acquire the mask from the clip
        clips[0].ConfigureMaskFromClip(ref mask);        //Filter out the first non-root (0) bone
        mask.SetTransformActive(1, false);        //Apply the mask back to the clip
        clips[0].ConfigureClipFromMask(mask);        //Apply the clips back to the ModelImporter
        modelImporter.clipAnimations = clips;        //Destroy the AvatarMask since we're not using it anymore
        Object.DestroyImmediate(mask);
    }
}
```
