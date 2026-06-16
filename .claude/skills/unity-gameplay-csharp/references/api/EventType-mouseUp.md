<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EventType-mouseUp.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

An event that is called when the mouse is no longer being clicked.

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
