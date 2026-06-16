<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.PropagationPhase.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The propagation phases of an event.

When an element receives an event, the event propagates from the panel's root element to the target element.

 In the TrickleDown phase, the event is sent from the panel's root element to the target element.

 In the BubbleUp phase, the event is sent from the target element back to the panel's root element.

 Refer to the Dispatch events manual page for more information and examples.

### Properties

| Property | Description |
| --- | --- |
| None | The event is not propagated. |
| TrickleDown | The event is sent from the panel's root element to the target element. |
| BubbleUp | The event is sent from the target element back to the panel's root element. |
