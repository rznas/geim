<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.Button-clicked.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Callback triggered when the button is clicked.

This is a shortcut for modifying Clickable.clicked. It is provided as a convenience. When you add or remove actions from clicked, it adds or removes them from `Clickable.clicked` automatically. 

The following example shows how to use the clicked event to print a message to the console when the button is clicked.

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
