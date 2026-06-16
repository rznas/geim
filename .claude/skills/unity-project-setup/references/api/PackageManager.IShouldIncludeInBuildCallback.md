<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PackageManager.IShouldIncludeInBuildCallback.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Interface used by the Package Manager to request build information about packages.

During a build, the ShouldIncludeInBuild method is invoked on each managed plugin (DLL) inside the package whose name is PackageName.

Register your implementation with the Package Manager using BuildUtilities.RegisterShouldIncludeInBuildCallback. You can register only one implementation of this interface per package.

Consider using PluginImporter.SetIncludeInBuildDelegate for a simpler alternative.

```csharp
using UnityEngine;
using UnityEditor;
using UnityEditor.PackageManager;[ExecuteInEditMode]
public class BuildCallbackExample : MonoBehaviour
{
    void Start()
    {
        Debug.Log("IShouldIncludeInBuildCallback example...");
        TestPluginInclusion();
    }    void TestPluginInclusion()
    {
        var callback = new CustomPackageBuildCallback();
        
        Debug.Log($"Checking plugins for package: {callback.PackageName}");        // Test with different plugin paths
        CheckPlugin(callback, "/Packages/com.mycompany.mypackage/Runtime/MyPlugin.dll");
        CheckPlugin(callback, "/Packages/com.mycompany.mypackage/Editor/MyEditorPlugin.dll");
    }    void CheckPlugin(IShouldIncludeInBuildCallback callback, string pluginPath)
    {
        bool include = callback.ShouldIncludeInBuild(pluginPath);
        Debug.Log($"Include plugin {pluginPath}: {include}");
    }
}public class CustomPackageBuildCallback : IShouldIncludeInBuildCallback
{
    public string PackageName => "com.mycompany.mypackage";    public bool ShouldIncludeInBuild(string path)
    {
        // Example: Include only plugins with "Runtime" in their path
        return path.Contains("Runtime");
    }
}
```

**Related information** 
 
 PluginImporter.SetIncludeInBuildDelegate
