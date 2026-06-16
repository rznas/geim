<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.IEventHandler.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Interface for class capable of handling events.

### Public Methods

| Method | Description |
| --- | --- |
| HandleEvent | Handles an event according to its propagation phase and current target, by executing the element's default action or callbacks associated with the event. |
| HasBubbleUpHandlers | Returns true if event handlers for the event propagation BubbleUp phase, have been attached to this object. |
| HasTrickleDownHandlers | Returns true if event handlers, for the event propagation TrickleDown phase, are attached to this object. |
| SendEvent | Sends an event to the event handler. |
