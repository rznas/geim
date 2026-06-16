<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Event-capsLock.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Is Caps Lock on? (Read Only)

Returns true if Caps Lock is switched on.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    // Creates a Label and prints CapsLock on/off
    // depending on the state of the capslock key.
    void OnGUI()
    {
        Event e = Event.current;
        if (e.capsLock)
        {
            GUI.Label(new Rect(10, 10, 100, 20), "CapsLock on.");
        }
        else
        {
            GUI.Label(new Rect(10, 10, 100, 20), "CapsLock off.");
        }
    }
}
```
