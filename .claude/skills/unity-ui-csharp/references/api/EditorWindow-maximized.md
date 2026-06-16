<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorWindow-maximized.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Whether or not this window is maximized?

To maximize the custome Editor window to the size of the Unity screen, set `maximized`. It works only when the custom Editor window is docked within Unity.

```csharp
using UnityEditor;
using UnityEngine;
using UnityEngine.UIElements;

public class MaximizedExample : EditorWindow
{
    [MenuItem("Examples/Maximized Window Example")]
    public static void ShowExample()
    {
        MaximizedExample wnd = GetWindow<MaximizedExample>();
        wnd.titleContent = new GUIContent("MaximizedExample");
    }

    public void CreateGUI()
    {
        var toggle = new Toggle("Maximize window");
        toggle.value = this.maximized;
        rootVisualElement.Add(toggle);
    }
}
```
