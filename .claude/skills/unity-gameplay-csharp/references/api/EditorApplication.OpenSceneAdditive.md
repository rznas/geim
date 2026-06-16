<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorApplication.OpenSceneAdditive.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Opens the Scene at `path` additively.

All paths are relative to the project folder. Like: "Assets/MyScenes/MyScene.unity".

```csharp
using UnityEngine;
using UnityEditor;public class Example : MonoBehaviour
{
    [MenuItem("Example/Load Scene Additive")]
    static void Apply()
    {
        string strScenePath = AssetDatabase.GetAssetPath(Selection.activeObject);
        if (strScenePath == null || !strScenePath.Contains(".unity"))
        {
            EditorUtility.DisplayDialog("Select Scene", "You Must Select a Scene!", "OK");
            EditorApplication.Beep();
            return;
        }
        Debug.Log("Opening " + strScenePath + " additively");
        EditorApplication.OpenSceneAdditive(strScenePath);
    }
}
```
