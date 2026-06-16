<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EventModifiers.FunctionKey.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Determines whether the current key press is a function key.

Function keys include the arrow keys, backspace, page up/down, as well as most non-printable keys.

 Additional resources: Event.functionKey.

```csharp
using UnityEngine;
using UnityEngine.UIElements;[RequireComponent(typeof(UIDocument))]
public class Example : MonoBehaviour
{
    // Detects if a function Key was pressed. If a
    // function key was pressed, prints its key code.    void OnEnable()
    {
        var textField = new TextField();
        textField.RegisterCallback<KeyDownEvent>(e =>
        {
            if ((e.modifiers & EventModifiers.FunctionKey) != 0)
            {
                Debug.Log("Pressed: " + e.keyCode);
            }
        }, TrickleDown.TrickleDown);
        GetComponent<UIDocument>().rootVisualElement.Add(textField);
    }
}
```
