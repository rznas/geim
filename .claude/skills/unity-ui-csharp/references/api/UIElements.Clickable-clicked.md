<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.Clickable-clicked.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Callback triggered when the target element is clicked.

The `clicked` and `clickedWithEventInfo` events are invoked when any of the following conditions occur:

- The target receives a NavigationSubmitEvent.
- The target receives a PointerDownEvent followed by a PointerUpEvent.

If the `delay` and `interval` optional constructor parameters are used, then the `clicked` event is considered repeatable and is instead invoked when any of the following conditions occur:

- The target receives a NavigationSubmitEvent.
- The target just received a PointerDownEvent.
- The target has received a PointerDownEvent and the pointer button has been held down for a given period of time.

If the `clicked` event is repeatable, then the first repeated click occurs after an amount of time corresponding to the `delay` parameter, and subsequent clicks occur after amounts of time corresponding to the `interval` parameter.

 The callback methods registered to this event should have no parameters and return no value.

 This manipulator makes use of pointer capture. 

Additional resources: Clickable.clickedWithEventInfo, NavigationSubmitEvent, PointerDownEvent, PointerCaptureEvent

```csharp
using UnityEngine;
using UnityEditor;
using UnityEngine.UIElements;public class ButtonExample : EditorWindow
{
    [MenuItem("Window/Button Example")]
    public static void ShowExample()
    {
        GetWindow<ButtonExample>();
    }    void CreateGUI()
    {
        var button = new Button { text = "Click me" };
        button.clicked += OnClick;        rootVisualElement.Add(button);
    }    void OnClick()
    {
        Debug.Log("Clicked!");
    }
}
```
