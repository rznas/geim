<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorWindow.Awake.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Called as the new window is opened.

Awake() message is called as a new editor window starts. This is similar to how an Awake() is called as an GameObject starts.

```csharp
// Show how Awake is called as an Editor Window starts
// In the script, the Awake message changes the string variable.

using UnityEditor;
using UnityEngine;
using UnityEngine.UIElements;

public class AwakeExample : EditorWindow
{
    static string s_Text = "hello";

    [MenuItem("Examples/Awake Example")]

    public static void ShowExample()
    {
        AwakeExample wnd = GetWindow<AwakeExample>();
        wnd.titleContent = new GUIContent("AwakeExample");
    }

    public void CreateGUI()
    {
        var label = new Label("Text: " + s_Text);
        rootVisualElement.Add(label);
    }

    public void Awake()
    {
        Debug.Log("Awake");
        s_Text = "demo";
    }

    public void OnDestroy()
    {
        Debug.Log("OnDestroy");
    }
}
```
