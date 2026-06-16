<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EventModifiers.Alt.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Is Alt/Option key held down?

Additional resources: Event.alt.

```csharp
using UnityEngine;
using UnityEngine.UIElements;[RequireComponent(typeof(UIDocument))]
public class Example : MonoBehaviour
{
    // Prints Option or Alt key was pressed depending on the
    // platform where this script is running.    void OnEnable()
    {
        var button = new Button();
        button.RegisterCallback<ClickEvent>(e =>
        {
            if ((e.modifiers & EventModifiers.Alt) != 0)
            {
                if (Application.platform == RuntimePlatform.OSXEditor)
                {
                    Debug.Log("Option key was pressed");
                }
                else if (Application.platform == RuntimePlatform.WindowsEditor)
                {
                    Debug.Log("Alt Key was pressed!");
                }
            }
        });
        GetComponent<UIDocument>().rootVisualElement.Add(button);
    }
}
```
