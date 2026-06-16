<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EventModifiers.Command.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Is Command/Windows key held down?

Additional resources: Event.command.

```csharp
using UnityEngine;
using UnityEngine.UIElements;[RequireComponent(typeof(UIDocument))]
public class Example : MonoBehaviour
{
    // Prints Command/Windows key was pressed depending on the
    // platform where this script is running.    void OnEnable()
    {
        var textField = new TextField();
        textField.RegisterCallback<KeyDownEvent>(e =>
        {
            if ((e.modifiers & EventModifiers.Command) != 0)
            {
                if (Application.platform == RuntimePlatform.OSXEditor)
                {
                    Debug.Log("Command key was pressed");
                }
                else if (Application.platform == RuntimePlatform.WindowsEditor)
                {
                    Debug.Log("Windows Key was pressed!");
                }
            }
        }, TrickleDown.TrickleDown);
        GetComponent<UIDocument>().rootVisualElement.Add(textField);
    }
}
```
