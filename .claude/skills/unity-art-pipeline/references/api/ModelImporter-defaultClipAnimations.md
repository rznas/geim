<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ModelImporter-defaultClipAnimations.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Generate a list of all default animation clip based on TakeInfo.

Additional resources: ModelImporterClipAnimation. Additional resources: TakeInfo.

```csharp
using UnityEngine;
using UnityEditor;
public class CreateAnimationClip : AssetPostprocessor
{
    void OnPreprocessAnimation()
    {
        ModelImporter modelImporter = assetImporter as ModelImporter;
        modelImporter.clipAnimations = modelImporter.defaultClipAnimations;
    }
}
```
