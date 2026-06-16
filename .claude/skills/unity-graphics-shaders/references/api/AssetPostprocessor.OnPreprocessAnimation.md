<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetPostprocessor.OnPreprocessAnimation.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Add this function to a subclass to get a notification just before animation from a model (.fbx, .mb file etc.) is imported.

This lets you control the import settings through code.

```csharp
using UnityEngine;
using UnityEditor;public class Example : AssetPostprocessor
{
    // Increment the version number, when the AssetPostprocessors code/behavior is changed
    static readonly uint k_Version = 0;
    public override uint GetVersion() { return k_Version; }    void OnPreprocessAnimation()
    {
        ModelImporter modelImporter = assetImporter as ModelImporter;
        modelImporter.clipAnimations = modelImporter.defaultClipAnimations;
    }
}
```
