<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.CallbackEventHandler.RegisterCallback.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| callback | The event handler to add. If the handler is null, this method throws an exception. |
| useTrickleDown | By default, this callback is called during the BubbleUp phase. Pass `TrickleDown.TrickleDown` to call this callback during the TrickleDown phase. |

### Description

Adds an event handler to the instance.

If the event handler is already registered for the same phase (either TrickleDown or BubbleUp), this method has no effect.

 Refer to the Handle event callbacks and value changes manual page for more information and examples. 

Additional resources: PropagationPhase

### Parameters

| Parameter | Description |
| --- | --- |
| callback | The event handler to add. If the handler is null, this method throws an exception. |
| userArgs | Data to pass to the callback. Use this argument to avoid closing on local variables. |
| useTrickleDown | By default, this callback is called during the BubbleUp phase. Pass `TrickleDown.TrickleDown` to call this callback during the TrickleDown phase. |

### Description

Adds an event handler to the instance.

If the event handler is already registered for the same phase (either TrickleDown or BubbleUp), this method has no effect.

 Refer to the Handle event callbacks and value changes manual page for more information and examples. 

Additional resources: PropagationPhase

```csharp
using UnityEngine;
using UnityEngine.UIElements;[RequireComponent(typeof(UIDocument))]
public class RegisterCallbackExample : MonoBehaviour
{
    void OnEnable()
    {
        var myClickableLabel = new Label("Click me");        myClickableLabel.RegisterCallback<PointerDownEvent, string>((ev, userArg) =>
        {
            Debug.Log("Hello from " + userArg);
        }, gameObject.name);        GetComponent<UIDocument>().rootVisualElement.Add(myClickableLabel);
    }
}
```

### Parameters

| Parameter | Description |
| --- | --- |
| callback | The event handler to add. If the handler is null, this method throws an exception. |
| callbackOptions | Extra properties to set for the callback. |

### Description

Adds an event handler to the instance.

If the event handler is already registered for the same phase (either TrickleDown or BubbleUp), this method has no effect.

 Refer to the Handle event callbacks and value changes manual page for more information and examples. 

Additional resources: PropagationPhase

### Parameters

| Parameter | Description |
| --- | --- |
| callback | The event handler to add. If the handler is null, this method throws an exception. |
| userArgs | Data to pass to the callback. Use this argument to avoid closing on local variables. |
| callbackOptions | Extra properties to set for the callback. |

### Description

Adds an event handler to the instance.

If the event handler is already registered for the same phase (either TrickleDown or BubbleUp), this method has no effect.

 Refer to the Handle event callbacks and value changes manual page for more information and examples. 

Additional resources: PropagationPhase
