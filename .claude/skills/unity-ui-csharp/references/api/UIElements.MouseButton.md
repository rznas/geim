<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.MouseButton.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Enumerates the mouse buttons to identify specific mouse button interactions.

Use this enumeration for mouse-related events to identify and respond to specific mouse button interactions. For example, you can check the Button property of a mouse event to determine which button triggered the event. 

 Additional resources: Button, MouseDownEvent, PointerDownEvent 

The following example shows how to use the MouseButton enumeration.

```csharp
using UnityEngine;
using UnityEditor;
using UnityEngine.UIElements;public class MouseButtonExample : EditorWindow
{
    [MenuItem("Window/Mouse Button Example")]
    public static void ShowExample()
    {
        GetWindow<MouseButtonExample>();
    }
    
    void CreateGUI()
    {
        var button = new Button { text = "Click me" };
        button.RegisterCallback<PointerDownEvent>(OnPointerDown, TrickleDown.TrickleDown); // Use TrickleDown phase        rootVisualElement.Add(button);
    }    private void OnPointerDown(PointerDownEvent evt)
    {
        switch ((MouseButton)evt.button)
        {
            case MouseButton.LeftMouse:
                Debug.Log("Left mouse button clicked");
                break;
            case MouseButton.RightMouse:
                Debug.Log("Right mouse button clicked");
                break;
            case MouseButton.MiddleMouse:
                Debug.Log("Middle mouse button clicked");
                break;
            default:
                Debug.Log("Unknown mouse button clicked");
                break;
        }
    }
}
```

### Properties

| Property | Description |
| --- | --- |
| LeftMouse | Represents the left mouse button. Typically used for selection or activation. |
| RightMouse | Represents the right mouse button. Typically used to open context menus. |
| MiddleMouse | Represents the middle mouse button. |
