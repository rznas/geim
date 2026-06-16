<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.KeyboardEventBase_1.GetPooled.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| c | The character for this event. |
| keyCode | The key code for this event. |
| modifiers | Event modifier keys that are active for this event. |

### Returns

**T** An initialized event.

### Description

Gets a keyboard event from the event pool and initializes it with the given values. Use this function instead of creating new events. Events obtained using this method need to be released back to the pool. You can use `Dispose()` to release them.

### Parameters

| Parameter | Description |
| --- | --- |
| systemEvent | A keyboard IMGUI event. |

### Returns

**T** An initialized event.

### Description

Gets a keyboard event from the event pool and initializes it with the given values. Use this function instead of creating new events. Events obtained using this method need to be released back to the pool. You can use `Dispose()` to release them.
