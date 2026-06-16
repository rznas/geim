<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Event-functionKey.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Is the current keypress a function key? (Read Only)

Returns true if the current keypress is an arrow key, page up, page down, backspace, etc. key. If this key needs special processing in order to work in text editing, `functionKey` is on.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    // Detects if a function Key was pressed. If a
    // function key was pressed, prints its key code.
    void OnGUI()
    {
        Event e = Event.current;
        if (e.functionKey)
        {
            Debug.Log("Pressed: " + e.keyCode);
        }
    }
}
```
