<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorGUILayout.BeginHorizontal.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| style | Optional GUIStyle. |
| options | An optional list of layout options that specify extra layout properties. Any values passed in here will override settings defined by the `style`.  Additional resources: GUILayout.Width, GUILayout.Height, GUILayout.MinWidth, GUILayout.MaxWidth, GUILayout.MinHeight, GUILayout.MaxHeight, GUILayout.ExpandWidth, GUILayout.ExpandHeight. |

### Description

Begin a horizontal group and get its rect back.

This is an extension to GUILayout.BeginHorizontal. It can be used for making compound controls.


 *Horizontal Compound group.*

```csharp
// Create a Horizontal Compound Buttonusing UnityEngine;
using UnityEditor;public class BeginEndHorizontalExample : EditorWindow
{
    [MenuItem("Examples/Begin-End Horizontal usage")]
    static void Init()
    {
        BeginEndHorizontalExample window = (BeginEndHorizontalExample)GetWindow(typeof(BeginEndHorizontalExample));
        window.Show();
    }    void OnGUI()
    {
        Rect r = EditorGUILayout.BeginHorizontal("Button");
        if (GUI.Button(r, GUIContent.none))
            Debug.Log("Go here");
        GUILayout.Label("I'm inside the button");
        GUILayout.Label("So am I");
        EditorGUILayout.EndHorizontal();
    }
}
```
