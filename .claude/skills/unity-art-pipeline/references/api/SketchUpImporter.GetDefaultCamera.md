<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SketchUpImporter.GetDefaultCamera.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**SketchUpImportCamera** The default camera.

### Description

The default camera or the camera of the active Scene which the SketchUp file was saved with.

The following is an example of extracting the default camera and logging if the camera is a perspective camera stored in SketchUpImportCamera.

```csharp
using UnityEngine;
using UnityEditor;public class SketchUpUtility
{
    public static void IsDefaultCameraPerspective(GameObject go)
    {
        string assetPath = AssetDatabase.GetAssetPath(go); // get asset path
        // get SketchUpImporter
        SketchUpImporter importer = AssetImporter.GetAtPath(assetPath) as SketchUpImporter;
        if (importer == null)
        {
            Debug.Log("This object is not imported by SketchUpImporter");
            return;
        }        SketchUpImportCamera camera = importer.GetDefaultCamera();  // get all the scenes        Debug.Log("The default camera is " + (camera.isPerspective ? "perspective" : "orthogonal"));
    }
}
```
