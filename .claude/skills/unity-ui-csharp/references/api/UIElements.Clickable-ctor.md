<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.Clickable-ctor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| handler | The method to call when the clickable is clicked. |
| delay | Determines when the event begins. Value is defined in milliseconds. Applies if delay is greater than `0`. |
| interval | Determines the time delta between event repetition. Value is defined in milliseconds. Applies if interval is greater than `0`. |

### Description

Constructor.

When you use this constructor, a click event is invoked repeatedly at regular intervals for as long as the pointer is held down on the target element. 

Additional resources: Clickable.clicked

```csharp
using UnityEditor;
using UnityEngine;
using UnityEngine.UIElements;public class ClickableEditorWindow : EditorWindow
{
    [MenuItem("Window/UI Toolkit/Clickable Example")]
    public static void ShowWindow()
    {
        var window = GetWindow<ClickableEditorWindow>();
        window.titleContent = new GUIContent("Clickable Example");
    }     public void CreateGUI()
    {        var clickableElement = new VisualElement
        {
            style =
            {
                width = 200,
                height = 40,
                backgroundColor = new Color(0.2f, 0.6f, 0.8f, 1),
                justifyContent = Justify.Center,
                alignItems = Align.Center,
            }
        };
        clickableElement.Add(new Label("Click Me"));        clickableElement.AddManipulator(new Clickable(() =>
        {
            Debug.Log("Element clicked!");
        }));        rootVisualElement.Add(clickableElement);
    }
}
```

### Parameters

| Parameter | Description |
| --- | --- |
| handler | The method to call when the clickable is clicked. |

### Description

Constructor.

When you use this constructor, the event (usually a PointerUpEvent or a NavigationSubmitEvent) that triggered the click is passed as an argument to the handler method. 

Additional resources: Clickable.clickedWithEventInfo, Clickable.clicked

### Parameters

| Parameter | Description |
| --- | --- |
| handler | The method to call when the clickable is clicked. |

### Description

Constructor.

Additional resources: Clickable.clicked
