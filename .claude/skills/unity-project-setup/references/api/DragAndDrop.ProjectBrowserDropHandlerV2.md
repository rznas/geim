<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/DragAndDrop.ProjectBrowserDropHandlerV2.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| dragEntityId | ID of the dragged asset that is dropped into the Project browser window. |
| dropUponPath | Path of the dragged asset that is dropped into the Project browser window. |
| perform | True if the event is of type EventType.DragPerform. |

### Returns

**DragAndDropVisualMode** Returns DragAndDropVisualMode.None if this handler is not able to process the event. In that case a new handler will be called for processing. Any other DragAndDropVisualMode results will stop the handler chain.

### Description

Handler for the Project.
