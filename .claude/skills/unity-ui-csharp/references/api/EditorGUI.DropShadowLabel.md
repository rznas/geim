<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorGUI.DropShadowLabel.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| position | Where to show the label. |
| content | Text to show @style style to use. |

### Description

Draws a label with a drop shadow.

Not superfast, so use with caution.


 *Shadow Label in and editor window.*

```csharp
using UnityEngine;
using UnityEditor;public class EditorGUIDropShadowLabel : EditorWindow
{
    // Write some text using a Shadow Label.
    string text = "This is some text with a Shadow Label";    [MenuItem("Examples/Shadow Label")]
    static void Init()
    {
        var window = GetWindow<EditorGUIDropShadowLabel>();
        window.position = new Rect(0, 0, 250, 60);
        window.Show();
    }    void OnGUI()
    {
        EditorGUI.DropShadowLabel(new Rect(0, 5, 245, 20), text);        if (GUI.Button(new Rect(0, 30, 250, 20), "Close"))
            this.Close();
    }    void OnInspectorUpdate()
    {
        Repaint();
    }
}
```
