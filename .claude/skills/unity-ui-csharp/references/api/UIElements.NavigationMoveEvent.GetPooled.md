<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.NavigationMoveEvent.GetPooled.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| moveVector | The move vector. |
| modifiers | The modifier keys held down during the event. |

### Returns

**NavigationMoveEvent** An initialized navigation event.

### Description

Gets an event from the event pool and initializes it with the given values. Use this function instead of creating new events. Events obtained from this method should be released back to the pool using Dispose().

### Parameters

| Parameter | Description |
| --- | --- |
| direction | The logical direction of the navigation. |
| modifiers | The modifier keys held down during the event. |

### Returns

**NavigationMoveEvent** An initialized navigation event.

### Description

Gets an event from the event pool and initializes it with the given values. Use this function instead of creating new events. Events obtained from this method should be released back to the pool using Dispose().

This method doesn't set any move vector. See other overload of the method for more information.
