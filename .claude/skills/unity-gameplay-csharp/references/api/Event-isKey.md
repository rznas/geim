<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Event-isKey.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Is this event a keyboard event? (Read Only)

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    // Detects any keyboard event
    void OnGUI()
    {
        Event e = Event.current;
        if (e.isKey)
        {
            Debug.Log("Detected a keyboard event!");
        }
    }
}
```
