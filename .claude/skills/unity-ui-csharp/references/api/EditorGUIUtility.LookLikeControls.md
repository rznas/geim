<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorGUIUtility.LookLikeControls.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| labelWidth | Width to use for prefixed labels. |
| fieldWidth | Width of text entries. |

### Description

Make all EditorGUI look like regular controls.

This will make the default styles used by EditorGUI look like controls (e.g. EditorGUI.Popup becomes a full popup menu).


 *Editor window with "LookLikeControls" look.*

```csharp
using UnityEngine;
using UnityEditor;
// Simple editor window that shows the difference between
// Look like controls and look like inspectorclass LookLikeControlsInspector : EditorWindow
{
    int integer1 = 0;
    float float1 = 5.5f;    [MenuItem("Examples/Look Like Controls - Inspector")]
    static void Init()
    {
        var window = GetWindow<LookLikeControlsInspector>();
        window.Show();
    }    void OnGUI()
    {
        EditorGUIUtility.LookLikeInspector();
        EditorGUILayout.TextField("Text Field:", "Hello There");
        EditorGUILayout.IntField("Int Field:", integer1);
        EditorGUILayout.FloatField("Float Field:", float1);
        EditorGUILayout.Space();
        EditorGUIUtility.LookLikeControls();
        EditorGUILayout.TextField("Text Field", "Hello There");
        EditorGUILayout.IntField("Int Field:", integer1);
        EditorGUILayout.FloatField("Float Field:", float1);
    }
}
```
