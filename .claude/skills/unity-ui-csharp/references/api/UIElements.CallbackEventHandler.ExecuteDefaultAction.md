<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.CallbackEventHandler.ExecuteDefaultAction.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| evt | The event instance. |

### Description

Executes logic after the callbacks registered on the event target have been executed, unless the event has been marked to prevent its default behaviour. EventBase_1.PreventDefault.

This method is designed to be overriden by subclasses. Use it to implement event handling without registering callbacks which guarantees precedences of callbacks registered by users of the subclass. Unlike HandleEventBubbleUp, this method is called after both the callbacks registered on the element and callbacks registered on its ancestors with TrickleDown.NoTrickleDown.

 Use EventInterestAttribute on this method to specify a range of event types that this method needs to receive. Events that don't fall into the specified types might not be sent to this method.

 This method is obsolete. Use CallbackEventHandler.HandleEventBubbleUp and CallbackEventHandler.HandleEventTrickleDown to handle events on an element without registering callbacks. Note that an additional check may be required if only the target of the event should process it.

 Also, the execution order or ExecuteDefaultAction-type and HandleEvent-type methods might differ when compared to other registered callbacks:

- `ExecuteDefaultAction` and `ExecuteDefaultActionAtTarget` are executed during the obsolete `DefaultAction` and `DefaultActionAtTarget` propagation phases.
- `HandleEventTrickleDown` and `HandleEventBubbleUp` are executed during the `TrickleDown` and `BubbleUp` propagation phases.
- Registered callbacks are executed during the `TrickleDown` and `BubbleUp` propagation phases.

Additional resources: CallbackEventHandler.HandleEventBubbleUp, CallbackEventHandler.HandleEventTrickleDown, PropagationPhase

```csharp
using UnityEngine;
using UnityEngine.UIElements;public class HandleEventExample : VisualElement
{
    // This method is obsolete! Use HandleEventTrickleDown instead and add the "at target" check.
    // Note that this may impact the execution order between the content of this method and other callbacks
    // on parent or child elements. It's recommended not to mix ExecuteDefaultAction and HandleEvent methods.
    protected override void ExecuteDefaultActionAtTarget(EventBase evt)
    {
        Debug.Log("Received event " + evt + ", at target, before bubble up on parents.");
        DoSomethingEarlyOnTarget();
    }    // This method is obsolete! Use HandleEventBubbleUp instead and add the "at target" check.
    // Note that this may impact the execution order between the content of this method and other callbacks
    // on parent or child elements. It's recommended not to mix ExecuteDefaultAction and HandleEvent methods.
    protected override void ExecuteDefaultAction(EventBase evt)
    {
        Debug.Log("Received event " + evt + ", at target, after bubble up on parents.");
        DoSomethingLateOnTarget();
    }    // This is the recommended method to use. Note that you can also handle events on the element if it's not the target.
    protected override void HandleEventTrickleDown(EventBase evt)
    {
        Debug.Log("Received event " + evt + " before trickle down on children.");        if (evt.target == this)
        {
            Debug.Log("Received event " + evt + ", at target, before trickle down on children.");
            DoSomethingEarlyOnTarget();
        }
    }    // The recommended way to go. Note that you can also handle events on the element if it's not the target.
    protected override void HandleEventBubbleUp(EventBase evt)
    {
        Debug.Log("Received event " + evt + " before bubble up on parents.");        if (evt.target == this)
        {
            Debug.Log("Received event " + evt + ", at target, before bubble up on parents.");
            DoSomethingLateOnTarget();
        }
    }    private void DoSomethingEarlyOnTarget() { }
    private void DoSomethingLateOnTarget() { }
}
```
