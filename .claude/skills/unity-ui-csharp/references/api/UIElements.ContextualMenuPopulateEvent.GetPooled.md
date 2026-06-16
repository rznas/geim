<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.ContextualMenuPopulateEvent.GetPooled.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| triggerEvent | The event that triggered the display of the contextual menu. |
| menu | The menu to populate. |
| target | The element that triggered the display of the contextual menu. |
| menuManager | The menu manager that displays the menu. |

### Returns

**ContextualMenuPopulateEvent** An initialized event.

### Description

Gets an event from the event pool and initializes it with the given values. Use this function instead of creating new events. Events obtained using this method need to be released back to the pool. You can use `Dispose()` to release them.
