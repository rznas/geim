<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/DragAndDrop.AddDropHandler.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| handler | Function to handle drop on the corresponding window. |

### Description

Allow override of the default behavior for the corresponding window. Multiple handlers can be registered on the same window. If a handler returns DragAndDropVisualMode.None the system will check the next handler. Any other results (DragAndDropVisualMode.Rejected or others DragAndDropVisualMode) means this handler has processed the drop event and no other handler will be called. The last handler is the default Unity handler.

```csharp
using UnityEditor;
using UnityEngine;
using System;static class DragDropSample
{
    static DragAndDropVisualMode ProjectHandler(int id, string path, bool perform)
    {
        if (perform)
            Debug.Log($"Dropped upon {path} {id}");
        else
            Debug.Log($"Dragging upon {path} {id}");
        return DragAndDropVisualMode.Move;
    }    public static void AddDragProjectHandler()
    {
        // Add the handler
        DragAndDrop.AddDropHandler(ProjectHandler);
    }    public static void RemoveProjectHandler()
    {
        // Remove the handler
        DragAndDrop.RemoveDropHandler(ProjectHandler);
    }
}
```
