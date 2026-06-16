<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/DragAndDrop.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Editor drag & drop operations.

### Static Properties

| Property | Description |
| --- | --- |
| activeControlID | Get or set ID of currently active drag and drop control. |
| entityIds | References to Entity Ids being dragged. |
| objectReferences | References to objects being dragged. |
| paths | The file names being dragged. |
| visualMode | The visual indication of the drag. |

### Static Methods

| Method | Description |
| --- | --- |
| AcceptDrag | Accept a drag operation. |
| AddDropHandlerV2 | Allow override of the default behavior for the corresponding window. Multiple handlers can be registered on the same window. If a handler returns DragAndDropVisualMode.None the system will check the next handler. Any other results (DragAndDropVisualMode.Rejected or others DragAndDropVisualMode) means this handler has processed the drop event and no other handler will be called. The last handler is the default Unity handler. |
| GetGenericData | Get data associated with current drag and drop operation. |
| HasHandler | Check if the handler is already registered for the destination window ID. |
| PrepareStartDrag | Clears drag & drop data. |
| RemoveDropHandlerV2 | Unregister a specific Drop Handler from a Window Drop Target. |
| SetGenericData | Set data associated with current drag and drop operation. |
| StartDrag | Start a drag operation. |

### Delegates

| Delegate | Description |
| --- | --- |
| HierarchyDropHandlerV2 | Handler for the Hierarchy. |
| InspectorDropHandler | Handler for the Inspector. |
| ProjectBrowserDropHandlerV2 | Handler for the Project. |
| SceneDropHandler | Handler for the Scene. |
