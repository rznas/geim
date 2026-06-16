<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.Focusable.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Base class for objects that can get the focus.

The focus is used to designate an element that will receive keyboard and navigation events.

 You can retrieve a panel's current focused element using its FocusController's FocusController.focusedElement property. 

Additional resources: KeyboardEventBase<T0>, NavigationEventBase<T0>

```csharp
using UnityEngine;
using UnityEngine.UIElements;[RequireComponent(typeof(UIDocument))]
public class FocusExample : MonoBehaviour
{
    void OnEnable()
    {
        var startGameButton = GetComponent<UIDocument>().rootVisualElement.Q<Button>("StartGame");        startGameButton.RegisterCallback<FocusInEvent>(ev =>
        {
            Debug.Log("FocusInEvent: button is focused and can be activated with keyboard or gamepad input.");
        });        Debug.Log("Calling startGameButton.Focus().");
        startGameButton.Focus();        var isFocused = startGameButton.focusController.focusedElement == startGameButton;
        Debug.Log("Immediately after startGameButton.Focus(): isFocused=" + isFocused);        // Expected output:
        // > Calling startGameButton.Focus().
        // > FocusInEvent: button is focused and can be activated with keyboard or gamepad input.
        // > Immediately after startGameButton.Focus(): isFocused=true
    }
}
```

### Properties

| Property | Description |
| --- | --- |
| canGrabFocus | Whether the element can be focused. |
| delegatesFocus | Whether the element delegates the focus to its children. |
| focusable | Whether an element can potentially receive focus. |
| focusController | Returns the focus controller for this element. |
| tabIndex | An integer used to sort focusable elements in the focus ring. Must be greater than or equal to zero. |

### Public Methods

| Method | Description |
| --- | --- |
| Blur | Tell the element to release the focus. |
| Focus | Attempts to give the focus to this element. |

### Inherited Members

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
