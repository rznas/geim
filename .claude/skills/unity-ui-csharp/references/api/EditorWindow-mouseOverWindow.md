<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorWindow-mouseOverWindow.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The EditorWindow currently under the mouse cursor. (Read Only)

`mouseOverWindow` can be null if there is no window under the cursor.

Additional resources: focusedWindow.


 *Move the mouse over other Unity windows to automatically focus them.*

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
