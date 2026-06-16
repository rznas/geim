<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Event-isMouse.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Is this event a mouse event? (Read Only)

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    // Detects any mouse event
    void OnGUI()
    {
        Event e = Event.current;
        if (e.isMouse)
        {
            Debug.Log("Detected a mouse event!");
        }
    }
}
```
