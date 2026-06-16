<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Event-button.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Which mouse button was pressed.

0 means left mouse button, 1 means right mouse button, 2 means middle mouse button. Used in EventType.MouseDown and EventType.MouseUp events.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    // Detect which mouse button is currently pressed
    // and print it.
    void OnGUI()
    {
        Event e = Event.current;
        if (e.button == 0 && e.isMouse)
        {
            Debug.Log("Left Click");
        }
        else if (e.button == 1)
        {
            Debug.Log("Right Click");
        }
        else if (e.button == 2)
        {
            Debug.Log("Middle Click");
        }
        else if (e.button > 2)
        {
            Debug.Log("Another button in the mouse clicked");
        }
    }
}
```
