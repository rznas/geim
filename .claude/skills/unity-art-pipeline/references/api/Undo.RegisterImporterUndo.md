<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Undo.RegisterImporterUndo.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| path | Path of the asset importer to register for Undo. |
| name | The name of the undo operation. |

### Description

Copies the state of the importer for the given asset path.

This method is used to Undo a AssetDatabase.SetImporterOverride operation.

```csharp
using UnityEditor;
using UnityEngine;
using UnityEditor.AssetImporters;
using UnityEditor.Experimental;[ScriptedImporter(1, null, new[] {"fbx"})]
class MyFBXImporter : ScriptedImporter
{
    public override void OnImportAsset(AssetImportContext ctx)
    {
        var go = new GameObject("root");
        ctx.AddObjectToAsset("root", go);
        ctx.SetMainObject(go);
    }
}class ChangeImporterOverrideWithUndo
{
    [MenuItem("Assets/Change Importer To MyFBXImporter With Undo")]
    static void ChangeImporterWithUndo()
    {
        var assetPath = AssetDatabase.GetAssetPath(Selection.activeObject);
        Undo.RegisterImporterUndo(assetPath, "Changed Importer");
        AssetDatabase.SetImporterOverride<MyFBXImporter>(assetPath);
    }
}
```
