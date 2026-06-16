<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorWindow.CreateGUI.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

`CreateGUI` is called when the EditorWindow's rootVisualElement is ready to be populated.

Use `CreateGUI` to add UI Toolkit UI elements to your window. 

When creating a custom Editor window, follow these guidelines:

- Put code dependent on UXML/USS loading in the CreateGUI method to ensure that all necessary assets are available.
- Keep the event registration code inside CreateGUI or after CreateGUI is called.

It's important to note that `CreateGUI` might not be called before the first call to Update. For more information, refer to the order of execution of the Editor window.

For an example on how to create an Editor window to react to user input, refer to Create a custom Editor window with C# script.

```csharp
// The window appears in front of the Editor.
// The window shows the type of a Unity object the cursor is over.

using UnityEngine;
using UnityEditor;
using UnityEngine.UIElements;

public class MouseOverWindowExample : EditorWindow
{
    [MenuItem("Examples/Mouse Over Example")]
    static void Init()
    {
        GetWindow<MouseOverWindowExample>("mouseOver");
    }

    Label m_Label;

    void CreateGUI()
    {
        m_Label = new Label();
        rootVisualElement.Add(m_Label);
    }

    void Update()
    {
        EditorWindow window = EditorWindow.mouseOverWindow;
        if (window != null)
            Debug.Log(window.ToString());
        string windowName = window != null ? window.ToString() : "(none)";
        m_Label.text = $"Mouse over: {windowName}";
    }
}
```
