<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorWindow.Show.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| immediateDisplay | Immediately display Show. |

### Description

Show the EditorWindow window.

EditorWindow.Show displays any window that has been created. In the script example below the window is created with no addition functionality. Many of the script examples in EditorWindow are more complex.

```csharp
// Create an empty Editor window and show it

using UnityEditor;
using UnityEngine;

public class ShowWindow : EditorWindow
{
    [MenuItem("Examples/ShowWindow")]
    public static void ShowExample()
    {
        ShowWindow wnd = GetWindow<ShowWindow>();
        wnd.titleContent = new GUIContent("ShowWindow");
        wnd.Show();
    }
}
```
