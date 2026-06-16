<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SceneManagement.EditorSceneManager-playModeStartScene.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Loads this SceneAsset when you start Play Mode.

If this property is set to a SceneAsset, Unity will load this SceneAsset instead of the Scenes currently open in the Editor when you start Play Mode.

```csharp
using UnityEditor;
using UnityEditor.SceneManagement;
using UnityEngine;public class TestWindow : EditorWindow
{
    void OnGUI()
    {
        // Use the Object Picker to select the start SceneAsset
        EditorSceneManager.playModeStartScene = (SceneAsset)EditorGUILayout.ObjectField(new GUIContent("Start Scene"), EditorSceneManager.playModeStartScene, typeof(SceneAsset), false);        // Or set the start Scene from code
        var scenePath = "Assets/Scene3.unity";
        if (GUILayout.Button("Set start Scene: " + scenePath))
            SetPlayModeStartScene(scenePath);
    }    void SetPlayModeStartScene(string scenePath)
    {
        SceneAsset myWantedStartScene = AssetDatabase.LoadAssetAtPath<SceneAsset>(scenePath);
        if (myWantedStartScene != null)
            EditorSceneManager.playModeStartScene = myWantedStartScene;
        else
            Debug.Log("Could not find Scene " + scenePath);
    }    [MenuItem("Test/Open")]
    static void Open()
    {
        GetWindow<TestWindow>();
    }
}
```
