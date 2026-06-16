<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorApplication.UpdateMainWindowTitle.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Force Unity Editor to update its window title. This function is automatically called when a new scene is loaded or when the editor starts. A user having register a callback on EditorApplication.updateMainWindowTitle can call this function to force an update of the title.

```csharp
using UnityEditor;
using UnityEngine;

public class WindowTitleExample
{
    private static void CustomTitleBar(ApplicationTitleDescriptor desc)
    {
        desc.title = $"My Editor Custom Title version: {Random.value}";
    }

    [MenuItem("Test/Setup custom title bar")]
    static void Setup()
    {
        EditorApplication.updateMainWindowTitle -= CustomTitleBar;
        // This callback will be triggered when a new scene is loaded or when Unity starts.
        EditorApplication.updateMainWindowTitle += CustomTitleBar;
        EditorApplication.UpdateMainWindowTitle();
    }
}
```
