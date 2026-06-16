<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorGUILayout.EndHorizontal.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Close a group started with BeginHorizontal.

Additional resources: EditorGUILayout.BeginHorizontal

 
 *Horizontal Compound group.*

```csharp
using UnityEngine;
using UnityEditor;// Create a Horizontal Compound Buttonpublic class EndHorizontalCS : EditorWindow
{
    [MenuItem("Examples/Begin-End Horizontal usage")]
    static void Init()
    {
        EditorWindow window = GetWindow(typeof(EndHorizontalCS));
        window.Show();
    }    void OnGUI()
    {
        Rect r = EditorGUILayout.BeginHorizontal("Button");
        if (GUI.Button(r, GUIContent.none))
            Debug.Log("I got pressed");
        GUILayout.Label("I'm inside the button");
        GUILayout.Label("So am I");
        EditorGUILayout.EndHorizontal();
    }
}
```
