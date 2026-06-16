<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PenStatus.Barrel.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The barrel button on the pen is currently pressed.

On macOS, this flag will always correspond to the lower barrel button.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void OnGUI()
    {
        Event m_Event = Event.current;        if (m_Event.type == EventType.MouseDown)
        {
            if (m_Event.pointerType == PointerType.Pen)     //Check if it's a pen event.
            {
                if (m_Event.penStatus == PenStatus.Barrel)
                    Debug.Log("Barrel button on pen is down.");
            }
        else
            Debug.Log("Mouse Down.");                   //If it's not a pen event, it's a mouse event. 
        }
    }
}
```
