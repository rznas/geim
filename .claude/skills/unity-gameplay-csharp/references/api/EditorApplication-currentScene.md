<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorApplication-currentScene.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The path of the Scene that the user has currently open (Will be an empty string if no Scene is currently open). (Read Only)

All paths are relative to the project folder. Like: "Assets/MyScenes/MyScene.unity".

```csharp
using UnityEngine;
using UnityEditor;public class Example : MonoBehaviour
{
    // saves the current Scene into a new temporary scene.
    [MenuItem("Example/Save temp Scene %s")]
    static void SaveTempScene()
    {
        string[] path = EditorApplication.currentScene.Split(char.Parse("/"));
        path[path.Length - 1] = "Temp_" + path[path.Length - 1];
        EditorApplication.SaveScene(string.Join("/", path));
    }
}
```
