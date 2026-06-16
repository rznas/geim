<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorGUI.GradientField.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| position | Rectangle on the screen to use for the field. |
| label | Optional label to display in front of the field. |
| gradient | The gradient to edit. |
| hdr | Display the HDR Gradient Editor. |
| colorSpace | Display the gradient and Gradient Editor in this color space. |

### Returns

**Gradient** The gradient edited by the user.

### Description

Makes a field for editing a Gradient.

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
        gradient = EditorGUI.GradientField(
            new Rect(3, 3, position.width - 6, 50), "Gradient", gradient);
    }
}
```
