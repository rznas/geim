<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/DragAndDrop.HierarchyDropHandler.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| dropTargetInstanceID | ID of the Game Object in the Hierarchy window that is under the mouse cursor. |
| parentForDraggedObjects | The parentForDraggedObjects is only set under special situations in Prefab Mode (most often it will be null). If this value is set the dropTargetInstanceID is 0. And the client code should use 'parentForDraggedObjects' as a forced parent of the drag. |
| perform | True if the event is of type EventType.DragPerform. |
| dropMode | Specify how the dragged object is to be dropped in the Hierarchy window. |

### Returns

**DragAndDropVisualMode** Returns DragAndDropVisualMode.None if this handler is not able to process event. In that case a new handler will be called for processing. Any other DragAndDropVisualMode results will stop the handler chain.

### Description

Handler for the Hierarchy.
