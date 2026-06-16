<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorGUILayout.BeginVertical.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| style | Optional GUIStyle. |
| options | An optional list of layout options that specify extra layout properties. Any values passed in here will override settings defined by the `style`.  Additional resources: GUILayout.Width, GUILayout.Height, GUILayout.MinWidth, GUILayout.MaxWidth, GUILayout.MinHeight, GUILayout.MaxHeight, GUILayout.ExpandWidth, GUILayout.ExpandHeight. |

### Description

Begin a vertical group and get its rect back.

This is an extension to GUILayout.BeginVertical. It can be used for making compound controls.


 *Vertical Compound group.*

```csharp
// Create a Vertical Compound Buttonusing UnityEngine;
using UnityEditor;public class BeginVerticalExample : EditorWindow
{
    [MenuItem("Examples/Begin-End Vertical usage")]
    static void Init()
    {
        BeginVerticalExample window = (BeginVerticalExample)
            EditorWindow.GetWindow(typeof(BeginVerticalExample), true, "My Empty Window");
        window.Show();
    }    void OnGUI()
    {
        Rect r = (Rect)EditorGUILayout.BeginVertical("Button");
        if (GUI.Button(r, GUIContent.none))
            Debug.Log("Go here");
        GUILayout.Label("I'm inside the button");
        GUILayout.Label("So am I");
        EditorGUILayout.EndVertical();
    }
}
```
