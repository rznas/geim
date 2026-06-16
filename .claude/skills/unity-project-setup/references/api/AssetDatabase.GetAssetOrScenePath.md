<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetDatabase.GetAssetOrScenePath.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| assetObject | The asset object to check. |

### Description

Returns the path name relative to the project folder where the asset or scene is stored.

All paths are relative to the project folder, for example: "Assets/MyTextures/hello.png" When a GameObject is part of a scene, the scene path is returned.

```csharp
using UnityEditor;
using UnityEditor.SceneManagement;
using UnityEngine;
using UnityEngine.SceneManagement;public class AssetDatabaseExamples : MonoBehaviour
{
    [MenuItem("AssetDatabase/Get Asset Or Scene Path Example")]
    static void GetAssetOrScenePathExample()
    {
        var asset = AssetDatabase.LoadAssetAtPath("Assets/Prefabs/Cube123.prefab", typeof(GameObject));
        //This will output Assets/Prefabs/Cube123.prefab
        Debug.Log(AssetDatabase.GetAssetOrScenePath(asset));
        var clone = Instantiate(asset);
        EditorSceneManager.SaveScene(SceneManager.GetActiveScene());
        //This will output Assets/Scenes/SampleScene.unity
        Debug.Log(AssetDatabase.GetAssetOrScenePath(clone));
    }
}
```
