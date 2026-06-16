<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetDatabase.AssetPathToGUID.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| path | Project relative path for the asset. |
| options | Specifies whether this method should return a GUID for recently deleted assets. The default value is AssetPathToGUIDOptions.IncludeRecentlyDeletedAssets. |

### Returns

**string** GUID of the asset.

### Description

Get the GUID for the asset at `path`.

All paths are relative to the project folder, for example: "Assets/MyTextures/hello.png".

When you delete an asset, the GUID for that asset remains in Unity's asset database until you close the Editor. As a result, by default this method will still return GUIDs for assets that were deleted in the current session of the Unity Editor.

For assets that do not exist, and were not deleted in the current Editor session, this method returns an empty string.

If you need it to return an empty string for assets that were deleted in the current Editor session, pass the value AssetPathToGUIDOptions.OnlyExistingAssets as the "options" parameter.

```csharp
using UnityEngine;
using UnityEditor;public class Example : MonoBehaviour
{
    [MenuItem("AssetDatabase/AssetPathToGUID")]
    static void Doit()
    {
        // texture.jpg exists or was recently deleted
        string t = AssetDatabase.AssetPathToGUID("Assets/texture.jpg");
        Debug.Log(t); // t will be not null
    }    [MenuItem("AssetDatabase/AssetPathToGUID Existing Assets Only")]
    static void DoitExistingAssetsOnly()
    {
        // texture.jpg does not exist on disk
        string t = AssetDatabase.AssetPathToGUID("Assets/texture.jpg", AssetPathToGUIDOptions.OnlyExistingAssets);
        Debug.Log(t); // t will be null
    }
}
```

See AssetDatabase.GUIDFromAssetPath for a version that returns a UnityEditor.GUID instead of a string.
