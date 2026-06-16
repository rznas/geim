<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PenStatus.Eraser.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The pen is in erase mode.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void OnGUI()
    {
        Event m_Event = Event.current;        if (m_Event.type == EventType.MouseDown)
        {
            if (m_Event.pointerType == PointerType.Pen)     //Check if it's a pen event.
            {
                if (m_Event.penStatus == PenStatus.Eraser)
                    Debug.Log("Pen is in erase mode.");
            }
        else
            Debug.Log("Mouse Down.");                   //If it's not a pen event, it's a mouse event. 
        }
    }
}
```
