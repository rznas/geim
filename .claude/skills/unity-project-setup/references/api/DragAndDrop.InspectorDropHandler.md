<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/DragAndDrop.InspectorDropHandler.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| targets | Target objects of the drag operation. |
| perform | True if the event is of type EventType.DragPerform. |

### Returns

**DragAndDropVisualMode** Returns DragAndDropVisualMode.None if this handler is not able to process the event. In that case a new handler will be called for processing. Any other DragAndDropVisualMode results will stop the handler chain.

### Description

Handler for the Inspector.
