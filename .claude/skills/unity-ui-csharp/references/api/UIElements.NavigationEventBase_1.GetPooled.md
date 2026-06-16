<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.NavigationEventBase_1.GetPooled.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| modifiers | The modifier keys held down during the event. |
| deviceType | The type of device this event was created from. |

### Returns

**T** An initialized navigation event.

### Description

Gets an event from the event pool and initializes it with the given values. Use this function instead of creating new events. Events obtained from this method should be released back to the pool using Dispose().
