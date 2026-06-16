<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.CallbackEventHandler.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Interface for classes capable of having callbacks to handle events.

### Public Methods

| Method | Description |
| --- | --- |
| HasBubbleUpHandlers | Return true if event handlers for the event propagation BubbleUp phase have been attached to this object. |
| HasTrickleDownHandlers | Returns true if event handlers, for the event propagation TrickleDown phase, are attached to this object. |
| RegisterCallback | Adds an event handler to the instance. |
| RegisterCallbackOnce | Adds an event handler to the instance. The event handler is automatically unregistered after it has been invoked exactly once. |
| SendEvent | Sends an event to the event handler. |
| UnregisterAllRemovableCallbacks | Removes all callbacks registered with CallbackOptions.Removable from the instance. |
| UnregisterCallback | Remove callback from the instance. |

### Protected Methods

| Method | Description |
| --- | --- |
| HandleEventBubbleUp | Executes logic on this element during the BubbleUp phase, immediately before this element's BubbleUp callbacks. Calling StopPropagation will prevent further invocations of this method along the propagation path. |
| HandleEventTrickleDown | Executes logic on this element during the TrickleDown phase, immediately after this element's TrickleDown callbacks. Calling StopPropagation will prevent further invocations of this method along the propagation path. |
| NotifyPropertyChanged | Informs the data binding system that a property of a control has changed. |
