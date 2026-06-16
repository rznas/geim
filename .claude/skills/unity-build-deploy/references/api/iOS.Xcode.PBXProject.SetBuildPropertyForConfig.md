<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/iOS.Xcode.PBXProject.SetBuildPropertyForConfig.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| configGuid | The GUID of the build configuration as returned by BuildConfigByName. |
| configGuids | The GUIDs of the build configurations as returned by BuildConfigByName. |
| name | The name of the build property. |
| value | The value of the build property. |

### Description

Sets a build property to the given value in the specified build configuration(s).

Duplicate build properties are ignored. Values for names `LIBRARY_SEARCH_PATHS` and `FRAMEWORK_SEARCH_PATHS` are quoted if they contain spaces.

```csharp
using UnityEditor;
using System.IO;
using UnityEditor.Callbacks;
using UnityEditor.iOS.Xcode;public class Sample_SetBuildPropertyForConfig  
{
    [PostProcessBuild]
    public static void OnPostprocessBuild(BuildTarget buildTarget, string pathToBuiltProject)
    {        // Stop processing if build target is not iOS
        if (buildTarget != BuildTarget.iOS)
            return;        // Initialize PBXProject
        string projectPath = PBXProject.GetPBXProjectPath(pathToBuiltProject);
        PBXProject pbxProject = new PBXProject();
        pbxProject.ReadFromFile(projectPath);        // Get the GUID you want to set a build property on
        string unityFrameworkTargetGuid = pbxProject.GetUnityFrameworkTargetGuid();        // Get the GUID of the "Debug" config so you can use it to change config-specific settings
        string configGuid = pbxProject.BuildConfigByName(unityFrameworkTargetGuid, "Debug");        // Set "ENABLE_BITCODE" to "NO" for "Debug" config 
        pbxProject.SetBuildPropertyForConfig(configGuid, "ENABLE_BITCODE", "NO");        // Apply changes to the pbxproj file
        pbxProject.WriteToFile(projectPath);
    }
}
```
