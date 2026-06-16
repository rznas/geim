<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.PointerCaptureHelper.CapturePointer.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| handler | The VisualElement that captures the pointer. |
| pointerId | The pointer to capture. |

### Description

Captures the pointer.

When a VisualElement captures a pointer, all pointer events—except PointerOverEvent, PointerOutEvent, PointerEnterEvent, PointerLeaveEvent— are sent to the element, regardless of which element is under the pointer.

 Pointer events that would normally bubble up or trickle down are instead sent exclusively to the capturing element.

 If a pointer capture is requested during the propagation of an existing event, then the capture only takes effect after the ongoing event has been fully dispatched and propagated. 
 **Note**: Events determine their target and propagation path when they are dispatched, not necessarily when they are sent. If an event is sent during another event's propagation, then the new event is added to an event queue and processed after the current event and all other events in the queue before it have been fully dispatched and propagated.
