<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorWindow-windowFocusChanged.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Called whenever the focused editor window is changed.

```csharp
using UnityEditor;
using UnityEngine;
using UnityEngine.UIElements;

public class FocusedWindowTracker : EditorWindow
{
    [MenuItem("Window/Focused Window Tracker")]
    private static void ShowTracker() => GetWindow<FocusedWindowTracker>();

    private void CreateGUI()
    {
        var label = new Label("I'm logging every focused window");
        rootVisualElement.Add(label);
    }

    private void OnEnable()
    {
        EditorWindow.windowFocusChanged += TrackFocusedWindow;
    }

    private void OnDisable()
    {
        EditorWindow.windowFocusChanged -= TrackFocusedWindow;
    }

    private static void TrackFocusedWindow()
    {
        Debug.Log($"Current focused window is {focusedWindow.titleContent.text}.");
    }
}
```
