<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorApplication.OpenScene.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Opens the Scene at `path`.

The Scene that is currently open will not be saved, use SaveSceneIfUserWantsTo for that. All paths are relative to the project folder. Like: "Assets/MyScenes/MyScene.unity".

```csharp
using UnityEngine;
using UnityEditor;public class Example : MonoBehaviour
{
    [MenuItem("Example/Save Scene while on play mode")]
    static void EditorPlaying()
    {
        if (EditorApplication.isPlaying)
        {
            string sceneName = EditorApplication.currentScene;
            string[] path = sceneName.Split(char.Parse("/"));
            path[path.Length - 1] = "Temp_" + path[path.Length - 1];
            var tempScene = string.Join("/", path);            EditorApplication.SaveScene(tempScene);            EditorApplication.isPaused = false;
            EditorApplication.isPlaying = false;            FileUtil.DeleteFileOrDirectory(EditorApplication.currentScene);
            FileUtil.MoveFileOrDirectory(tempScene, sceneName);
            FileUtil.DeleteFileOrDirectory(tempScene);            EditorApplication.OpenScene(sceneName);
        }
    }
}
```
