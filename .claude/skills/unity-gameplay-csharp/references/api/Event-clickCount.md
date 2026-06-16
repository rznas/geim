<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Event-clickCount.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

How many consecutive mouse clicks have we received.

Used in EventType.MouseDown event; use this to differentiate between a single and double clicks.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void OnGUI()
    {
        Event e = Event.current;
        if (e.isMouse)
        {
            Debug.Log("Mouse clicks: " + e.clickCount);
        }
    }
}
```
