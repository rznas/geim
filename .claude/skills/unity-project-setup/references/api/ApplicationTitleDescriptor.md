<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ApplicationTitleDescriptor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Utility class containing all the information necessary to format Unity Editor main window title. All the various fields are concatenated to create a fully formed title. If only ApplicationTitleDescriptor.title is provided, this will become the complete title.

See also: EditorApplication.updateMainWindowTitle.

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

### Properties

| Property | Description |
| --- | --- |
| activeSceneName | Unity active scene. |
| codeCoverageEnabled | Is code coverage enabled. |
| projectName | Current project name. |
| targetName | What is the runtime target for a Unity build. |
| title | Setting this field will set the complete editor title without using any of the other fields of ApplicationTitleDescriptor. |
| unityProductName | Unity version name in the form of: Unity <number> <release stream (optional)>. |
| unityVersion | Unity version number. |
