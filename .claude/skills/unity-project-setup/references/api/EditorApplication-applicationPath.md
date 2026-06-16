<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorApplication-applicationPath.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Gets the path to the Unity Editor application. (Read Only)

The path to the Unity Editor can vary depending on your configuration. If you installed the 2021.3 Editor from the Hub on Windows, you might have a path like this: `C:/Program Files/Unity/Hub/Editor/2021.3.10f1/Editor/Unity.exe`. Additional resources: applicationContentsPath.

```csharp
// Display file system location where the Unity
// executable is stored.using UnityEditor;
using UnityEngine;public class ApplicationPathExample
{
    // Create a menu item called "Location of Unity application" in the "Examples" menu.
    // In the Editor, click on "Location of Unity Application" in the menu to display the path to the Unity executable in the Console.
    [MenuItem("Examples/Location of Unity application")]
    static void AppPath()
    {
        Debug.Log(EditorApplication.applicationPath);
    }
}
```
