<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorGUILayout.GradientField.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| label | Optional label to display in front of the field. |
| value | The gradient to edit. |
| options | An optional list of layout options that specify extra layout properties. Any values passed in here will override settings defined by the `style`.  Additional resources: GUILayout.Width, GUILayout.Height, GUILayout.MinWidth, GUILayout.MaxWidth, GUILayout.MinHeight, GUILayout.MaxHeight, GUILayout.ExpandWidth, GUILayout.ExpandHeight. |

### Returns

**Gradient** The gradient edited by the user.

### Description

Make a field for editing a Gradient.

```csharp
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEditor;public class EditorGUIGradientField : EditorWindow
{
    Gradient gradient = new Gradient();    [MenuItem("Examples/Gradient Field demo")]
    static void Init()
    {
        EditorWindow window = GetWindow(typeof(EditorGUIGradientField));
        window.position = new Rect(0, 0, 400, 199);
        window.Show();
    }    void OnGUI()
    {
        gradient = EditorGUILayout.GradientField(
            "Gradient", gradient);
    }
}
```
