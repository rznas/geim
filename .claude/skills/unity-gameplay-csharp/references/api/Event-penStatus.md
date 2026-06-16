<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Event-penStatus.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Specifies the state of the pen. For example, whether the pen is in contact with the screen or tablet, whether the pen is inverted, and whether buttons are pressed.

On macOS, penStatus will not reflect changes to button mappings.

Before you process an event as a pen event, you should check the PointerType of a mouse event (e.g. EventType.MouseDown). 

When a user uses a pen, some mouse events are often mixed with pen events in the event stream, and you can't distinguish them by type because mouse and pen events share the same EventType. Instead, use PointerType to distinguish them. Otherwise, Unity processes all incoming mouse events as pen events, which can lead to unexpected behavior because the mouse events (pointerType = Mouse) do not have pen event fields, like PenStatus, set.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void OnGUI()
    {
        Event m_Event = Event.current;        if (m_Event.type == EventType.MouseDown)
        {
            if (m_Event.pointerType == PointerType.Pen)     //Check if it's a pen event.
            {
                if (m_Event.penStatus == PenStatus.Contact)
                    Debug.Log("Pen is in contact with screen or tablet.");
            }
        else
            Debug.Log("Mouse Down.");                   //If it's not a pen event, it's a mouse event. 
        }
    }
}
```
