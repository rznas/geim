<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Event-numeric.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Is the current keypress on the numeric keyboard? (Read Only)

Use this flag to destinguish between main & numeric keys.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    // Creates a Label and prints Numeric Key pad is on/off
    // depending on the state of the numlock key.
    void OnGUI()
    {
        Event e = Event.current;
        if (e.numeric)
        {
            GUI.Label(new Rect(10, 10, 150, 20), "Numeric Key pad is on");
        }
        else
        {
            GUI.Label(new Rect(10, 10, 150, 20), "Numeric Key pad is off");
        }
    }
}
```
