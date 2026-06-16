<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ModelImporter-clipAnimations.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Animation clips to split animation into. Additional resources: ModelImporterClipAnimation.

When you import a file for the first time clipAnimations will be always empty. If you need to populate clipAnimations before the first import you can use an AssetPostprocessor and override AssetPostprocessor.OnPreprocessAnimation.

```csharp
using UnityEditor;
using UnityEngine;public class CreateAnimationClip : AssetPostprocessor
{
    void OnPreprocessAnimation()
    {
        var modelImporter = assetImporter as ModelImporter;
        modelImporter.clipAnimations = modelImporter.defaultClipAnimations;
    }
}
```
