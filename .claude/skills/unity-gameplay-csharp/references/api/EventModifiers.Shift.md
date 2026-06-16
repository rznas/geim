<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EventModifiers.Shift.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Is Shift held down?

Additional resources: Event.shift.

```csharp
using UnityEngine;
using UnityEngine.UIElements;[RequireComponent(typeof(UIDocument))]
public class Example : MonoBehaviour
{
    void OnEnable()
    {
        var button = new Button();
        button.RegisterCallback<ClickEvent>(e =>
        {
            if ((e.modifiers & EventModifiers.Control) != 0)
            {
                if ((e.modifiers & EventModifiers.Shift) != 0)
                    Debug.Log("Control+Shift is pressed");
                else
                    Debug.Log("Control is pressed");
            }
            else if ((e.modifiers & EventModifiers.Shift) != 0)
            {
                Debug.Log("Shift is pressed");
            }
        });
        GetComponent<UIDocument>().rootVisualElement.Add(button);
    }
}
```
