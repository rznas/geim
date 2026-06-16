<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.IFocusRing.GetFocusChangeDirection.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Get the direction of the focus change for the given event.

For example, in a VisualElementFocusRing, when the Tab key is pressed, the focus change direction should be VisualElementFocusChangeDirection.right.

 When the EventDispatcher processes navigation and pointer events, it automatically calls this method to generate Focus events.

 The Focus event's IFocusEvent.direction matches the value returned by this method to generate it.
