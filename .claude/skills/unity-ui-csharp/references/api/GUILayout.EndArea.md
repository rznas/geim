<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GUILayout.EndArea.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Close a GUILayout block started with BeginArea.

*Explained Area of the example.*

```csharp
using UnityEngine;public class ExampleScript : MonoBehaviour
{
    void OnGUI()
    {
        GUILayout.BeginArea(new Rect(10, 10, 100, 100));
        GUILayout.Button("Click me");
        GUILayout.Button("Or me");
        // Ends the area started above
        GUILayout.EndArea();
    }
}
```
