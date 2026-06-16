<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/DragAndDrop-visualMode.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The visual indication of the drag.

Default is DragAndDropVisualMode.Link.

```csharp
using UnityEngine;
using UnityEditor;public class Example : MonoBehaviour
{
    void OnGUI()
    {
        EventType eventType = Event.current.type;
        if (eventType == EventType.DragUpdated ||
            eventType == EventType.DragPerform)
        {
            // Show a copy icon on the drag
            DragAndDrop.visualMode = DragAndDropVisualMode.Copy;            if (eventType == EventType.DragPerform)
            {
                DragAndDrop.AcceptDrag();
            }
            Event.current.Use();
        }
    }
}
```
