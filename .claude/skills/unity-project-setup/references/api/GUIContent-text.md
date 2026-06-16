<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GUIContent-text.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The text contained.

```csharp
using UnityEngine;public class ExampleScript : MonoBehaviour
{
    void OnGUI()
    {
        GUI.Button(new Rect(0, 0, 100, 20), new GUIContent("Click me!"));
    }
}
```
