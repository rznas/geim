<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorApplication-updateMainWindowTitle.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| value | Title description. |

### Description

Register a custom callback to specify how the Unity Editor title can be generated. Unity will trigger this callback when a new scene is loaded , when Unity starts or when EditorApplication.UpdateMainWindowTitle is called.

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
