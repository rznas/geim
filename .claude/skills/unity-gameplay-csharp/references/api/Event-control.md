<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Event-control.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Is Control key held down? (Read Only)

Returns true if any Control key is held down.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void OnGUI()
    {
        Event e = Event.current;
        if (e.control)
        {
            Debug.Log("Control was pressed.");
        }
    }
}
```
