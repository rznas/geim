<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GUI-backgroundColor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Global tinting color for all background elements rendered by the GUI.

This gets multiplied by color.

Additional resources: contentColor, color.


 *Yellow Background color applied to a button.*

```csharp
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    void OnGUI()
    {
        GUI.backgroundColor = Color.yellow;
        GUI.Button(new Rect(10, 10, 70, 30), "A button");
    }
}
```
