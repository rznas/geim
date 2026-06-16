<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorWindow-focusedWindow.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The EditorWindow which currently has keyboard focus. (Read Only)

`focusedWindow` can be null if no window has focus.

Additional resources: mouseOverWindow, Focus.


 *Focus other windows with a mouse click.*

```csharp
using UnityEngine;
using UnityEditor;
using UnityEngine.UIElements;

// Print the name of the focused window to a label.
public class FocusedWindow : EditorWindow
{
    [MenuItem("Examples/Focused Window")]
    public static void ShowExample()
    {
        FocusedWindow wnd = GetWindow<FocusedWindow>();
        wnd.titleContent = new GUIContent("Focused Window Example");
    }

    public void CreateGUI()
    {
        var label = new Label();
        rootVisualElement.Add(label);

        EditorApplication.update += UpdateLabel;

        void UpdateLabel()
        {
            label.text = EditorWindow.focusedWindow != null
                ? EditorWindow.focusedWindow.ToString()
                : "No focused window";
        }
    }
}
```
