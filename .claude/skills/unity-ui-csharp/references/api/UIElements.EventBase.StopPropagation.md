<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.EventBase.StopPropagation.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Stops the propagation of the event to other targets. All subscribers to the event on this target still receive the event.

The event is not sent to other elements along the propagation path. If the propagation is in the PropagationPhase.TrickleDown phase, this prevents event handlers from executing on children of the EventBase.currentTarget, including on the event's EventBase.target itself, and prevents all event handlers using the TrickleDown.NoTrickleDown option from executing (see CallbackEventHandler.RegisterCallback). If the propagation is in the PropagationPhase.BubbleUp phase, this prevents event handlers from executing on parents of the EventBase.currentTarget.

 This method has the same effect as EventBase.StopImmediatePropagation except on execution of other event handlers on the EventBase.currentTarget.

 Calling this method does not prevent some internal actions to be processed, such as an element getting focused as a result of a PointerDownEvent.

 Refer to the Dispatch events manual page for more information and examples. 

Additional resources: EventBase.StopImmediatePropagation
