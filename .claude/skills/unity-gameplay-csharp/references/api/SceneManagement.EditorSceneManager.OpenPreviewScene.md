<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SceneManagement.EditorSceneManager.OpenPreviewScene.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| scenePath | Scene file to open. |

### Returns

**Scene** The created preview Scene.

### Description

Opens a Scene Asset in a preview Scene.

You can use this function for tooling that needs to access GameObjects but where the scene should not be displayed in the Hierarchy. Make sure to call ClosePreviewScene to prevent leaking scenes.

Additional resources: NewPreviewScene, ClosePreviewScene.

```csharp
using UnityEditor;
using UnityEditor.SceneManagement;
using UnityEngine;public static class TestOpenAsPreviewScene
{
    [MenuItem("Assets/Scene Root Names")]
    static void OpenContextClickedSceneInAPreviewScene()
    {
        SceneAsset sceneAsset = Selection.activeObject as SceneAsset;
        if (sceneAsset == null)
        {
            Debug.Log("Context click on a Scene Asset file");
            return;
        }        var assetPath = AssetDatabase.GetAssetPath(sceneAsset);
        var scene = EditorSceneManager.OpenPreviewScene(assetPath);
        try
        {
            var rootGameObjects = scene.GetRootGameObjects();            Debug.Log($"Root GameObject Names (count: {rootGameObjects.Length})");
            foreach (var gameObject in rootGameObjects)
                Debug.Log(gameObject.name);
        }
        finally
        {
            EditorSceneManager.ClosePreviewScene(scene);
        }
    }
}
```
