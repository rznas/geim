<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorGUILayout.EndVertical.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Close a group started with BeginVertical.

Additional resources: EditorGUILayout.BeginVertical


 *Vertical Compound group.*

```csharp
// Create a Vertical Compound Button
using UnityEngine;
using UnityEditor;public class EndVerticalCS : EditorWindow
{
    [MenuItem("Examples/Begin-End Vertical usage")]
    static void Init()
    {
        EditorWindow window = GetWindow(typeof(EndVerticalCS));
        window.Show();
    }    void OnGUI()
    {
        Rect r = EditorGUILayout.BeginVertical("Button");
        if (GUI.Button(r, GUIContent.none))
            Debug.Log("Go here");
        GUILayout.Label("I'm inside the button");
        GUILayout.Label("So am I");
        EditorGUILayout.EndVertical();
    }
}
```
