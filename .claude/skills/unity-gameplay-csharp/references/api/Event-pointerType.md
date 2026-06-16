<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Event-pointerType.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The type of pointer that created this event (for example, mouse, touch screen, pen).

When a user uses a pen, some mouse events are often mixed with pen events in the event stream, and you can't distinguish them by type because mouse and pen events share the same EventType. Instead, use PointerType to distinguish them. Otherwise, Unity processes all incoming mouse events as pen events, which can lead to unexpected behavior because the mouse events (pointerType = Mouse) do not have pen event fields, like PenStatus, set.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void OnGUI()
    {
        Event m_Event = Event.current;        if (m_Event.type == EventType.MouseDown)
        {
            if (m_Event.pointerType == PointerType.Pen)     //Check if it's a pen event.
                Debug.Log("Pen Down.");
            else 
                Debug.Log("Mouse Down.");                   //If it's not a pen event, it's a mouse event. 
        }
    }
}
```
