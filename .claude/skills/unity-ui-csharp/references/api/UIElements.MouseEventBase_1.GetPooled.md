<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.MouseEventBase_1.GetPooled.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| systemEvent | An IMGUI mouse event. |

### Returns

**T** An initialized event.

### Description

Gets an event from the event pool and initializes it with the given values. Use this function instead of creating new events. Events obtained using this method need to be released back to the pool. You can use `Dispose()` to release them.

### Parameters

| Parameter | Description |
| --- | --- |
| position | The mouse position. |
| button | The mouse button pressed. |
| clickCount | The number of consecutive mouse clicks received. |
| delta | The relative movement of the mouse compared to the mouse position when the last event was received. |
| modifiers | The modifier keys held down during the event. |

### Returns

**T** An initialized event.

### Description

Gets an event from the event pool and initializes it with the given values. Use this function instead of creating new events. Events obtained using this method need to be released back to the pool. You can use `Dispose()` to release them.

### Parameters

| Parameter | Description |
| --- | --- |
| triggerEvent | The event that sent this event. |

### Returns

**T** An initialized event.

### Description

Gets an event from the event pool and initializes it with the given values. Use this function instead of creating new events. Events obtained using this method need to be released back to the pool. You can use `Dispose()` to release them.

### Parameters

| Parameter | Description |
| --- | --- |
| pointerEvent | The pointer event that sent this event. |

### Returns

**T** An initialized event.

### Description

Gets an event from the event pool and initializes it with the given values. Use this function instead of creating new events. Events obtained using this method need to be released back to the pool. You can use `Dispose()` to release them.
