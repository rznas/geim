<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorWindow.Close.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Close the editor window.

This will destroy the editor window.


 *Simple example to show Close()*

```csharp
using UnityEditor;
using UnityEngine;
using UnityEngine.UIElements;

public class CloseWindow : EditorWindow
{
    [MenuItem("Examples/Close Window")]
    public static void ShowExample()
    {
        CloseWindow wnd = GetWindow<CloseWindow>();
        wnd.titleContent = new GUIContent("CloseWindow");
    }

    public void CreateGUI()
    {
        var closeButton = new Button();
        closeButton.text = "Close!";
        closeButton.clicked += () =>
        {
            this.Close();
        };

        rootVisualElement.Add(closeButton);
    }
}
```
