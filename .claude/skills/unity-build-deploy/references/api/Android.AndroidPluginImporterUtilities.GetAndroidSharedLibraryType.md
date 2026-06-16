<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Android.AndroidPluginImporterUtilities.GetAndroidSharedLibraryType.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**AndroidSharedLibraryType** Returns the AndroidSharedLibraryType that represents the type of content that the shared library contains.

### Description

Gets the type of content that the shared library contains.

```csharp
using UnityEngine;
using UnityEditor;
using UnityEditor.Android;public class SharedLibraryTypes : EditorWindow
{
    const string SharedLibraryPath = "Insert_Path_To_SharedLibrary.so";    [MenuItem("Examples/SharedLibraryTypes")]
    static void Init()
    {
        SharedLibraryTypes window = (SharedLibraryTypes)EditorWindow.GetWindow(typeof(SharedLibraryTypes), true, "SharedLibraryTypes");
        window.Show();
    }    void SetFileToBe(AndroidSharedLibraryType type)
    {
        PluginImporter imp = (PluginImporter)PluginImporter.GetAtPath(SharedLibraryPath);
        imp.SetAndroidSharedLibraryType(type);
    }    void OnGUI()
    {
        if (GUILayout.Button("Set file to be symbol"))
            SetFileToBe(AndroidSharedLibraryType.Symbol);        if (GUILayout.Button("Set file to be executable"))
            SetFileToBe(AndroidSharedLibraryType.Executable);
    }
}
```
