<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GUILayout.EndHorizontal.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Close a group started with BeginHorizontal.

*Horizontal Layout.*

```csharp
using UnityEngine;public class ExampleScript : MonoBehaviour
{
    void OnGUI()
    {
        GUILayout.BeginHorizontal("box");        GUILayout.Button("I'm the first button");
        GUILayout.Button("I'm to the right");        // End the horizontal group we began above
        GUILayout.EndHorizontal();
    }
}
```
