<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.FocusController.IgnoreEvent.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| evt | The event to be ignored. |

### Description

Instructs the FocusController to ignore the given event. This will prevent the event from changing the current focused VisualElement or triggering focus events.

In general this will have no effect if the event is not a PointerDownEvent, MouseDownEvent, or NavigationMoveEvent.
