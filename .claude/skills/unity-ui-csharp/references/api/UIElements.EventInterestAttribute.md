<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.EventInterestAttribute.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Optional attribute on overrides of CallbackEventHandler.HandleEventBubbleUp and CallbackEventHandler.HandleEventTrickleDown. Use this attribute to specify all the event types used by the method override. The event dispatcher can then safely skip events not needed for this method if they are identified internally as valid candidates for performance optimizations.

Only use this attribute for performance optimizations, not for filtering out specific event types. All event types specified in an EventInterestAttribute on a HandleEvent method override are guaranteed to be sent to that method. However, event types not specified in any EventInterestAttribute might still be sent to that method under various conditions:

- A base class override uses it,
- The event is part of a group that includes at least one event of interest, or
- Event optimizations are not applied for any other reason.

If no EventInterestAttribute is specified, UI Toolkit assumes that the method doesn't have enough information on necessary event types, and sends all incoming events to that method conservatively. 
 
 It is recommended to use the EventInterestAttribute attribute because it allows UI Toolkit to optimize performance by skipping unnecessary event-related calculations for methods that don’t use the event.

### Constructors

| Constructor | Description |
| --- | --- |
| EventInterestAttribute | Use this constructor when the affected method uses only specific event types that can easily be determined at compile time. Multiple EventInterestAttribute can be used on the same method to add more type interests. |
