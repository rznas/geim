<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Event-keyCode.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The raw key code for keyboard events.

Used in EventType.KeyDown and EventType.KeyUp events; this returns KeyCode value that matches the physical keyboard key. Use this for handling cursor keys, function keys etc.

Additional resources: Event.character.

```csharp
// Detects keys pressed and prints their keycodeusing UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    void OnGUI()
    {
        Event e = Event.current;
        if (e.isKey)
        {
            Debug.Log("Detected key code: " + e.keyCode);
        }
    }
}
```
