<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SceneManagement.EditorSceneManager.SaveScene.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| scene | The Scene to be saved. |
| dstScenePath | The file path to save the Scene to. If the path is empty, the current open Scene is overwritten. If it has not yet been saved at all, a save dialog is shown. |
| saveAsCopy | If set to true, the Scene is saved without changing the current Scene, and without clearing the unsaved changes marker. |

### Returns

**bool** True if the save succeeded, otherwise false.

### Description

Save a Scene.

All paths are relative to the project folder, such as: "Assets/MyScenes/MyScene.unity". Folders specified in the path must already exist before calling the function. If no path is specified, the path of the current open Scene is used, except if it was never saved before, in which case a save dialog is shown.

The function returns false if the save failed. This can happen if the specified path is invalid or if the user cancels in the case of a save dialog.

Additional resources: EditorSceneManager.GetActiveScene

Example: 
 *Simple Editor Window that saves each 300 seconds the current Scene.*

**Note:** This saves the Scene whether it is marked dirty or not.

```csharp
using UnityEditor;
using UnityEngine;
using System.Collections;
using UnityEditor.SceneManagement;public class SimpleAutoSave : EditorWindow
{
    public float saveTime = 300;
    public float nextSave = 0;
    [MenuItem("Example/Simple autoSave")]
    static void Init()
    {
        SimpleAutoSave window = (SimpleAutoSave)EditorWindow.GetWindowWithRect(typeof(SimpleAutoSave), new Rect(0, 0, 200, 50));
        window.Show();
    }    void OnGUI()
    {
        EditorGUILayout.LabelField("Save Each:", saveTime + " Secs");
        float timeToSave = nextSave - (float)EditorApplication.timeSinceStartup;
        EditorGUILayout.LabelField("Next Save:", timeToSave.ToString() + " Sec");
        Repaint();
        if (EditorApplication.timeSinceStartup > nextSave)
        {
            string[] path = EditorSceneManager.GetActiveScene().path.Split(char.Parse("/"));
            path[path.Length - 1] = "AutoSave_" + path[path.Length - 1];
            bool saveOK = EditorSceneManager.SaveScene(EditorSceneManager.GetActiveScene(), string.Join("/", path));
            Debug.Log("Saved Scene " + (saveOK ? "OK" : "Error!"));
            nextSave = (float)EditorApplication.timeSinceStartup + saveTime;
        }
    }
}
```
