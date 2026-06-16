<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorWindow.ShowPopup.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Shows an Editor window using popup-style framing.

This means the window has no frame, and is not draggable. It is intended for showing something like a popup menu within an existing window.



Opening a window using this method will not give it the functionality of a popup window, only the styling. For full popup functionality (eg, auto closing when the window loses focus), use PopupWindow.

```csharp
using UnityEngine;
using UnityEditor;
using UnityEngine.UIElements;

public class ShowPopupExample : EditorWindow
{
    [MenuItem("Examples/ShowPopup Example")]
    static void Init()
    {
        ShowPopupExample window = ScriptableObject.CreateInstance<ShowPopupExample>();
        window.position = new Rect(Screen.width / 2, Screen.height / 2, 250, 150);
        window.ShowPopup();
    }

    void CreateGUI()
    {
        var label = new Label("This is an example of EditorWindow.ShowPopup");
        rootVisualElement.Add(label);

        var button = new Button();
        button.text = "Agree!";
        button.clicked += () => this.Close();
        rootVisualElement.Add(button);
    }
}
```
