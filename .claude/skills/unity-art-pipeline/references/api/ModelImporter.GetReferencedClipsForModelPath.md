<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ModelImporter.GetReferencedClipsForModelPath.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| modelPath | The model for which to find matching referenced clips. |

### Returns

**string[]** Array of referenced clip GUIDs matching the given model.

### Description

Returns all the referenced clips matching the given model name.

Note: referenced clips are matched against the given model by respecting the EditorSettings.referencedClipsExactNaming project setting.

```csharp
using UnityEditor;
using UnityEngine;public class TestMenus
{
    // Create a menu named "Log Referenced Clips" in the "Tests" menu
    [MenuItem("Tests/Log Referenced Clips")]
    static void LogReferencedClips()
    {
        var modelPath = "Assets/Characters/Asset.fbx";
        Debug.Log($"Referenced Clips for {modelPath}:");        var referencedClips = ModelImporter.GetReferencedClipsForModelPath(modelPath);
        foreach (var referencedClip in referencedClips)
            Debug.Log($"--Clip: {AssetDatabase.GUIDToAssetPath(referencedClip)}");        // Output:
        // Referenced Clips for Assets/Characters/Asset.fbx:
        // --Clip: Assets/Characters/Asset@Jump.fbx
        // --Clip: Assets/Characters/Asset@Run.fbx
        // --Clip: Assets/Characters/Asset@Walk.fbx
    }
}
```
