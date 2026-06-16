<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Android.AndroidPluginImporterUtilities.SetAndroidSharedLibraryType.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Sets the type of content that the shared library contains.

This is only applicable for plugins that use the `.so` file extension.

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
