<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EventType.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Types of UnityGUI input and processing events.

Use this to tell which type of event has taken place in the GUI. Types of Events include mouse clicking, mouse dragging, button pressing, the mouse entering or exiting the window, and the scroll wheel as well as others mentioned below.

Events can be used to prevent other GUI elements from responding to that event. Refer to Event.Use.

Additional resources: Event.type, Event, GUI Scripting Guide.

```csharp
//Attach this script to a GameObject
//This script is a basic overview of some of the Event Types available. It outputs messages depending on the current Event Type.using UnityEngine;public class Example : MonoBehaviour
{
    void OnGUI()
    {
        Event m_Event = Event.current;        if (m_Event.type == EventType.MouseDown)
        {
            Debug.Log("Mouse Down.");
        }        if (m_Event.type == EventType.MouseDrag)
        {
            Debug.Log("Mouse Dragged.");
        }        if (m_Event.type == EventType.MouseUp)
        {
            Debug.Log("Mouse Up.");
        }
    }
}
```

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

### Properties

| Property | Description |
| --- | --- |
| MouseDown | Mouse button was pressed. |
| MouseUp | Mouse button was released. |
| MouseMove | Mouse was moved (Editor views only). |
| MouseDrag | Mouse was dragged. |
| KeyDown | A keyboard key was pressed. |
| KeyUp | A keyboard key was released. |
| ScrollWheel | The scroll wheel was moved. |
| Repaint | A repaint event. One is sent every frame. |
| Layout | A layout event. |
| DragUpdated | Editor only: drag & drop operation updated. |
| DragPerform | Editor only: drag & drop operation performed. |
| DragExited | Editor only: drag & drop operation exited. |
| Ignore | Event should be ignored. |
| Used | Already processed event. |
| ValidateCommand | Validates a special command (e.g. copy & paste). |
| ExecuteCommand | Execute a special command (eg. copy & paste). |
| ContextClick | User has right-clicked (or control-clicked on the mac). |
| MouseEnterWindow | Mouse entered a window (Editor views only). |
| MouseLeaveWindow | Mouse left a window (Editor views only). |
| TouchDown | Direct manipulation device (finger, pen) touched the screen. |
| TouchUp | Direct manipulation device (finger, pen) left the screen. |
| TouchMove | Direct manipulation device (finger, pen) moved on the screen (drag). |
| TouchEnter | Direct manipulation device (finger, pen) moving into the window (drag). |
| TouchLeave | Direct manipulation device (finger, pen) moved out of the window (drag). |
| TouchStationary | Direct manipulation device (finger, pen) stationary event (long touch down). |
