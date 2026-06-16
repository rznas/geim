<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorWindow.OnDestroy.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

OnDestroy is called to close the EditorWindow window.

*A simple example of OnDestroy()*

```csharp
// Close the window when the Button is pressed. The window
// will receive an OnDestroy() call.

using UnityEditor;
using UnityEngine;
using UnityEngine.UIElements;

public class OnDestroyExample : EditorWindow
{
    [MenuItem("Examples/OnDestroy Example")]
    public static void ShowExample()
    {
        OnDestroyExample wnd = GetWindow<OnDestroyExample>();
        wnd.titleContent = new GUIContent("OnDestroy Example");
    }

    public void CreateGUI()
    {
        Button closebutton = new Button();
        closebutton.text = "Close!";
        closebutton.clicked += () =>
        {
            this.Close();
        };

        rootVisualElement.Add(closebutton);
    }
    void OnDestroy()
    {
        Debug.Log("Destroyed...");
    }
}
```
