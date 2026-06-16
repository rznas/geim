<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.PointerCaptureEventBase_1.GetPooled.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| target | For PointerCapture and MouseCapture events, the element that captures the pointer. For PointerCaptureOut and MouseCaptureOut events, the element that releases the pointer. |
| relatedTarget | For PointerCaptureEvent and MouseCaptureEvent, returns the element that loses the pointer capture, if any. For PointerCaptureOutEvent and MouseCaptureOutEvent, returns the element that captures the pointer. |
| pointerId | The pointer that is captured or released. |

### Returns

**T** An initialized event.

### Description

Gets an event from the event pool and initializes it with the given values. Use this function instead of creating new events. Events obtained using this method need to be released back to the pool. You can use `Dispose()` to release them.
