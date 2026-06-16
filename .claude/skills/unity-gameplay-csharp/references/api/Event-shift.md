<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Event-shift.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Is Shift held down? (Read Only)

Returns true if any Shift key is held down.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    // Detects if the shift key was pressed
    void OnGUI()
    {
        Event e = Event.current;
        if (e.shift)
        {
            Debug.Log("Shift was pressed :O");
        }
    }
}
```
