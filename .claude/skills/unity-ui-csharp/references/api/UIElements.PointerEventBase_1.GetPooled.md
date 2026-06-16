<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.PointerEventBase_1.GetPooled.html
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
| touch | A Touch structure from the InputManager. |
| modifiers | The modifier keys held down during the event. |

### Returns

**T** An initialized event.

### Description

Gets an event from the event pool and initializes it with the given values. Use this function instead of creating new events. Events obtained using this method need to be released back to the pool. You can use `Dispose()` to release them.

### Parameters

| Parameter | Description |
| --- | --- |
| pen | A PenData structure from the InputManager containing pen event information. |
| modifiers | The modifier keys held down during the event. |

### Returns

**T** An initialized event.

### Description

Gets a pointer event from the event pool and initializes it with the given values. Use this function instead of creating new events. Events obtained using this method need to be released back to the pool. You can use `Dispose()` to release them.

### Parameters

| Parameter | Description |
| --- | --- |
| triggerEvent | The event that sent this event. |

### Returns

**T** An initialized event.

### Description

Gets an event from the event pool and initializes it with the given values. Use this function instead of creating new events. Events obtained using this method need to be released back to the pool. You can use `Dispose()` to release them.
