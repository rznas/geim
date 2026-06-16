<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorApplication.SaveScene.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| path | The file path to save at. If empty, the current open Scene will be overwritten, or if never saved before, a save dialog is shown. |
| saveAsCopy | If set to `true`, the Scene will be saved without changing the currentScene and without clearing the unsaved changes marker. |

### Returns

**bool** True if the save succeeded, otherwise false.

### Description

Save the open Scene.

All paths are relative to the project folder, such as: "Assets/MyScenes/MyScene.unity". Folders specified in the path must already exist before calling the function. If no path is specified, the path of the current open Scene is used, except if it was never saved before, in which case a save dialog is shown.

The function returns `false` if the save failed. This can happen if the specified path is invalid or if the user cancels in the case of a save dialog.

When calling the function, the unsaved changes marker is cleared, just as when saving using the file menu. (On Windows, the unsaved changes marker is an asterix after the file name in the window title. On macOS it's a dot inside the red close button of the window.) When a path is specified, the currentScene is also changed to be the specified asset.

When `saveAsCopy` is set to `true` however, neither the currentScene or the unsaved changes marker is changed.

Additional resources: currentScene.


 *Simple Editor Window that saves each 300 seconds the current Scene.*

```csharp
using UnityEngine;
using UnityEditor;public class SimpleAutoSave : EditorWindow
{
    float saveTime = 300f;
    float nextSave = 0f;    [MenuItem("Example/Simple autoSave")]
    static void Init()
    {
        SimpleAutoSave window = EditorWindow.GetWindowWithRect<SimpleAutoSave>(new Rect(0, 0, 165, 40), true);
        window.Show();
    }    void OnGUI()
    {
        EditorGUILayout.LabelField("Save Each:", saveTime + " Secs");
        int timeToSave = (int)(nextSave - EditorApplication.timeSinceStartup);
        EditorGUILayout.LabelField("Next Save:", timeToSave.ToString() + " Sec");
        this.Repaint();        if (EditorApplication.timeSinceStartup > nextSave)
        {
            string[] path = EditorApplication.currentScene.Split(char.Parse("/"));
            path[path.Length - 1] = "AutoSave_" + path[path.Length - 1];
            EditorApplication.SaveScene(string.Join("/", path), true);
            Debug.Log("Saved Scene");
            nextSave = (int)(EditorApplication.timeSinceStartup + saveTime);
        }
    }
}
```
