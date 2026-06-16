<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SketchUpImporter.GetScenes.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**SketchUpImportScene[]** Array of scenes extracted from a SketchUp file.

### Description

The method returns an array of SketchUpImportScene which represents SketchUp scenes.

SketchUpImportScene is the structure to represent the Scene that was extracted from the SketchUp file.

```csharp
using UnityEngine;
using UnityEditor;public class SketchUpUtility
{
    public static void PrintSketchUpSceneName(GameObject go)
    {
        string assetPath = AssetDatabase.GetAssetPath(go); // get asset path
        // get SketchUpImporter
        SketchUpImporter importer = AssetImporter.GetAtPath(assetPath) as SketchUpImporter;
        if (importer == null)
        {
            Debug.Log("This object is not imported by SketchUpImporter");
            return;
        }        SketchUpImportScene[] scenes = importer.GetScenes();  // get all the scenes        foreach (SketchUpImportScene scene in scenes)
        {
            Debug.Log(scene.name);
        }
    }
}
```

The above example takes a GameObject that is imported from a SketchUp file and prints the name of the scenes in the SketchUp file.
