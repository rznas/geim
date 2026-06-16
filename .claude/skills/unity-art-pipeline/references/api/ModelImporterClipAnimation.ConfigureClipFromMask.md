<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ModelImporterClipAnimation.ConfigureClipFromMask.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| mask | AvatarMask from which the mask settings will be imported. |

### Description

Copy the mask settings from an AvatarMask to the clip configuration.

When writing an AssetPostprocessor, use this method to copy an AvatarMask to your clip configuration.

See also: ModelImporterClipAnimation.ConfigureMaskFromClip.

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
