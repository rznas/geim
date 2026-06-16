<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Android.AndroidSharedLibraryType.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Options for the type of content that a shared library contains.

```csharp
using UnityEditor;
using UnityEditor.Android;
using UnityEngine;public class AndroidSharedLibraryTypeExample
{
    [MenuItem("Tools/Configure Libraries")]
    static void ConfigureLibraries()
    {
        // Set library type as executable
        SetLibraryType("Assets/Plugins/Android/libs/arm64-v8a/testLib.so", 
            AndroidSharedLibraryType.Executable);
        
        // Set library type as symbol
        SetLibraryType("Assets/Plugins/Android/symbols/arm64-v8a/testLib.sym.so", 
            AndroidSharedLibraryType.Symbol);
    }
    
    static void SetLibraryType(string path, AndroidSharedLibraryType type)
    {
        var importer = AssetImporter.GetAtPath(path) as PluginImporter;
        
        if (importer != null)
        {
            // Set the Android shared library type
            importer.SetAndroidSharedLibraryType(type);
            importer.SaveAndReimport();
            Debug.Log($"Set {path} as {type}");
        }
        else
        {
            Debug.Log($"Plug-in not found at {path}. Cannot set the Android shared library type");
        }
    }
}
```

### Properties

| Property | Description |
| --- | --- |
| Executable | The shared library contains executable code and can optionally include debug symbols. |
| Symbol | The shared library contains Android symbols that translate active memory addresses into information you can use, like a method name. |
