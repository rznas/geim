<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.CallbackEventHandler.RegisterCallbackOnce.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| callback | The event handler to add. If the handler is null, this method throws an exception. |
| useTrickleDown | By default, this callback is called during the BubbleUp phase. Pass `TrickleDown.TrickleDown` to call this callback during the TrickleDown phase. |

### Description

Adds an event handler to the instance. The event handler is automatically unregistered after it has been invoked exactly once.

If the event handler is already registered for the same phase (either TrickleDown or BubbleUp) and hasn't been invoked yet, this method has no effect. 

Additional resources: PropagationPhase, CallbackEventHandler.RegisterCallback

### Parameters

| Parameter | Description |
| --- | --- |
| callback | The event handler to add. If the handler is null, this method throws an exception. |
| userArgs | Data to pass to the callback. Use this argument to avoid closing on local variables. |
| useTrickleDown | By default, this callback is called during the BubbleUp phase. Pass TrickleDown.TrickleDown to call this callback during the TrickleDown phase. |

### Description

Adds an event handler to the instance. The event handler is automatically unregistered after it has been invoked exactly once.

If the event handler is already registered for the same phase (either TrickleDown or BubbleUp) and hasn't been invoked yet, this method has no effect. 

Additional resources: PropagationPhase, CallbackEventHandler.RegisterCallback
