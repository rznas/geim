<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.GeometryChangedEvent.GetPooled.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| oldRect | The old dimensions of the element. |
| newRect | The new dimensions of the element. |

### Returns

**GeometryChangedEvent** An initialized event.

### Description

Gets an event from the event pool, and initializes it with the specified values. Use this method instead of instancing new events. Use Dispose() to release events back to the event pool.
