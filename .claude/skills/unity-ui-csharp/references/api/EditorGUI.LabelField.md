<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorGUI.LabelField.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| position | Rectangle on the screen to use for the label field. |
| label | Label in front of the label field. |
| label2 | The label to show to the right. |
| style | Style information (color, etc) for displaying the label. |

### Description

Makes a label field. (Useful for showing read-only info.)

*Shows a label in an editor window with the seconds since the editor started.*

```csharp
// Shows a label in the editor with the seconds since the editor startedusing UnityEditor;
using UnityEngine;
using System.Collections;//Select the dependencies of the found GameObject
public class EditorGUIObjectField : EditorWindow
{
    [MenuItem("Examples/EditorGUI Label Usage")]
    static void Init()
    {
        UnityEditor.EditorWindow window = GetWindow(typeof(EditorGUIObjectField));
        window.Show();
    }    void OnGUI()
    {
        EditorGUI.LabelField(new Rect(3, 3, position.width, 20),
            "Time since start: ",
            EditorApplication.timeSinceStartup.ToString());
        this.Repaint();
    }
}
```
