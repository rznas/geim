<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EventModifiers.CapsLock.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Is Caps Lock on?

Additional resources: Event.capsLock.

```csharp
using UnityEngine;
using UnityEngine.UIElements;[RequireComponent(typeof(UIDocument))]
public class Example : MonoBehaviour
{
    // Prints CapsLock on/off depending on the state of the capslock key.    void OnEnable()
    {
        var textField = new TextField();
        textField.RegisterCallback<KeyDownEvent>(e =>
        {
            if ((e.modifiers & EventModifiers.CapsLock) != 0)
            {
                Debug.Log("CapsLock on.");
            }
            else
            {
                Debug.Log("CapsLock off.");
            }
        }, TrickleDown.TrickleDown);
        GetComponent<UIDocument>().rootVisualElement.Add(textField);
    }
}
```
