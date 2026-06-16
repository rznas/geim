<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.EventInterestOptions.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Options used as arguments for EventInterestAttribute when the affected method treats events in a general, non type-specific manner.

### Properties

| Property | Description |
| --- | --- |
| Inherit | Use the Inherit option when only the events needed by the base class are required. For example, a class that overrides the CallbackEventHandler.HandleEventBubbleUp method and checks if an enabled flag is active before calling its base.ExecuteDefaultActionAtTarget method would use this option. |
| AllEventTypes | Use the EventInterestOptions.AllEventTypes option when the method with an EventInterestAttribute doesn't have a specific filter for the event types it uses, or wants to receive all possible event types. For example, a class that overrides CallbackEventHandler.HandleEventBubbleUp and logs a message every time an event of any kind is received would require this option. |
