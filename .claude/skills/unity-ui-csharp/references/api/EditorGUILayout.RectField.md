<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorGUILayout.RectField.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| label | Label to display above the field. |
| value | The value to edit. |
| options | An optional list of layout options that specify extra layout properties. Any values passed in here will override settings defined by the `style`.  Additional resources: GUILayout.Width, GUILayout.Height, GUILayout.MinWidth, GUILayout.MaxWidth, GUILayout.MinHeight, GUILayout.MaxHeight, GUILayout.ExpandWidth, GUILayout.ExpandHeight. |

### Returns

**Rect** The value entered by the user.

### Description

Make an X, Y, W & H field for entering a Rect.

*Capture the RectField sizes.*

```csharp
using UnityEditor;
using UnityEngine;public class RectFieldExample : EditorWindow
{
    static Rect pos;    [MenuItem("Examples/RectField Example")]
    static void rectFieldExample()
    {
        RectFieldExample window =
            EditorWindow.GetWindowWithRect<RectFieldExample>(new Rect(0, 0, 250, 100));
        window.Show();
    }    void OnGUI()
    {
        EditorGUILayout.BeginVertical();
        pos =  EditorGUILayout.RectField("Internal input:", pos);        EditorGUILayout.BeginHorizontal();
        GUILayout.FlexibleSpace();
        GUILayout.Label("x: " + (pos.x).ToString());
        GUILayout.FlexibleSpace();
        GUILayout.Label("y: " + (pos.y).ToString());
        GUILayout.FlexibleSpace();
        GUILayout.Label("w: " + (pos.width).ToString());
        GUILayout.FlexibleSpace();
        GUILayout.Label("h: " + (pos.height).ToString());
        GUILayout.FlexibleSpace();
        EditorGUILayout.EndHorizontal();
        EditorGUILayout.EndVertical();        if (GUILayout.Button("Close"))
        {
            this.Close();
        }
    }
}
```
