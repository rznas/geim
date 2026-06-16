<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GUILayout.EndVertical.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Close a group started with BeginVertical.

*Vertical Layout.*

```csharp
using UnityEngine;public class ExampleScript : MonoBehaviour
{
    void OnGUI()
    {
        GUILayout.BeginVertical("box");        GUILayout.Button("I'm the top button");
        GUILayout.Button("I'm the bottom button");        // End the vertical group we started above
        GUILayout.EndVertical();
    }
}
```
