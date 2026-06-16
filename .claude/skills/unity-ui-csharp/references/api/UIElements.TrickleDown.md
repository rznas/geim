<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.TrickleDown.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Use this enum to specify during which propagation phase the event handler is executed.

Additional resources: PropagationPhase, CallbackEventHandler.RegisterCallback_1

### Properties

| Property | Description |
| --- | --- |
| NoTrickleDown | Execute the event handler during the BubbleUp propagation phase if the event bubbles and the element is a parent of the event's target, or if the callback is registered directly on the event's target. |
| TrickleDown | Execute the event handler during the TrickleDown propagation phase if the event tricklesDown and the element is a parent of the event's target, or if the callback is registered directly on the event's target. |
