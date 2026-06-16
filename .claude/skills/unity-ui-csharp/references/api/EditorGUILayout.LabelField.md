<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorGUILayout.LabelField.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| label | Label in front of the label field. |
| label2 | The label to show to the right. |
| options | An optional list of layout options that specify extra layout properties. Any values passed in here will override settings defined by the `style`.  Additional resources: GUILayout.Width, GUILayout.Height, GUILayout.MinWidth, GUILayout.MaxWidth, GUILayout.MinHeight, GUILayout.MaxHeight, GUILayout.ExpandWidth, GUILayout.ExpandHeight. |

### Description

Make a label field. (Useful for showing read-only info.)

*Shows a label in the editor (Label) with the seconds since the editor started (Label2).*

```csharp
// Shows a label in the editor with the seconds since the editor started
using UnityEditor;
using UnityEngine;public class LabelFieldExample : EditorWindow
{
    [MenuItem("Examples/Editor GUILayout Label Usage")]
    static void Init()
    {
        LabelFieldExample window = (LabelFieldExample)EditorWindow.GetWindow(typeof(LabelFieldExample), true, "My Empty Window");
        window.Show();
    }    void OnGUI()
    {
        EditorGUILayout.LabelField("Time since start: ",
            EditorApplication.timeSinceStartup.ToString());
        this.Repaint();
    }
}
```
