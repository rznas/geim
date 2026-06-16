<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GUILayout.Width.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Option passed to a control to give it an absolute width.

*Fixed width for a GUI Control.*

```csharp
using UnityEngine;public class ExampleScript : MonoBehaviour
{
    // Draws a  button with a  fixed width
    void OnGUI()
    {
        GUILayout.Button("A Button with fixed width", GUILayout.Width(300));
    }
}
```
