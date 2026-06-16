<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.IEventHandler.HandleEvent.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| evt | The event to handle. |

### Description

Handles an event according to its propagation phase and current target, by executing the element's default action or callbacks associated with the event.

The EventDispatcher might invoke this method multiple times for the same event: once for each propagation phase and each target along the event's propagation path if it has matching callbacks or overrides default actions for the event.

 **Note:** Do not use this method to intercept all events whose propagation path includes this element. There is no guarantee that it will or will not be invoked for a propagation phase or target along the propagation path if that target has no callbacks for the event and has no default action override that can receive the event. 

 Additional resources: CallbackEventHandler.RegisterCallback, CallbackEventHandler.HandleEventBubbleUp
