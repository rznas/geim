<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GUI-contentColor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Tinting color for all text rendered by the GUI.

This gets multiplied by color.

Additional resources: backgroundColor, color.


 *Yellow content color (font) in a button.*

```csharp
// Tints with yellow the letters of the button.using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    void OnGUI()
    {
        GUI.contentColor = Color.yellow;
        GUI.Button(new Rect(10, 10, 70, 30), "A button");
    }
}
```
