<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Event-delta.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The relative movement of the mouse compared to last event.

Used in EventType.MouseMove, EventType.MouseDrag, EventType.ScrollWheel events.

Additional resources: Event.mousePosition.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    // Move the scroll wheel to determine
    // the X & Y scrolling amount.
    void OnGUI()
    {
        Event e = Event.current;
        if (e.isMouse)
        {
            Debug.Log(e.delta);
        }
    }
}
```
