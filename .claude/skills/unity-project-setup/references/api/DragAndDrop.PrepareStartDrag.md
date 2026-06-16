<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/DragAndDrop.PrepareStartDrag.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Clears drag & drop data.

Clears everything stored in the drag & drop object and prepares it so you can write into it for initiating a drag operation.

Additional resources: StartDrag, paths, objectReferences.

```csharp
using UnityEngine;
using UnityEditor;public class Example : MonoBehaviour
{
    void OnGUI()
    {
        if (Event.current.type == EventType.MouseDrag)
        {
            // Clear out drag data
            DragAndDrop.PrepareStartDrag();            // Set up what we want to drag
            DragAndDrop.paths = new string[] { "/Users/joe/myPath.txt" };            // Start the actual drag
            DragAndDrop.StartDrag("Dragging title");            // Make sure no one uses the event after us
            Event.current.Use();
        }
    }
}
```
