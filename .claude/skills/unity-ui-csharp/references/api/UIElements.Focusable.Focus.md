<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.Focusable.Focus.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Attempts to give the focus to this element.

The element might not become focused if:

- The element cannot be focused.
- The element delegates its focus.

A Panel's current focused element can be retrieved using its FocusController's focusedElement property.

 As long as an element is focused, it receives all keyboard and navigation events sent to its Panel.

 If a focus change is requested during another event's propagation, the change is only applied after all the events currently in the event queue have been fully dispatched and propagated. 

Additional resources: IFocusRing, FocusController.focusedElement

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
