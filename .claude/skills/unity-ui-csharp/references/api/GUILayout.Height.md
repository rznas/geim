<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GUILayout.Height.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Option passed to a control to give it an absolute height.

**Note:** This option will override the Automatic height Layout parameter


 *Fixed Height for a GUI Control.*

```csharp
using UnityEngine;public class ExampleScript : MonoBehaviour
{
    // Draws a  button with a  fixed height
    void OnGUI()
    {
        GUILayout.Button("A Button with fixed height", GUILayout.Height(300));
    }
}
```
