<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.TrickleDown.NoTrickleDown.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Execute the event handler during the BubbleUp propagation phase if the event bubbles and the element is a parent of the event's target, or if the callback is registered directly on the event's target.

Handlers that use TrickleDown.TrickleDown are executed before those that use TrickleDown.NoTrickleDown. 

Additional resources: EventBase.bubbles, PropagationPhase.BubbleUp
