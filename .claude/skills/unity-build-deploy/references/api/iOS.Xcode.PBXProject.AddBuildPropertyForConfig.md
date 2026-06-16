<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/iOS.Xcode.PBXProject.AddBuildPropertyForConfig.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| configGuid | The GUID of the build configuration as returned by BuildConfigByName. |
| configGuids | An array of GUIDs of build configurations. |
| name | The name of the build property. |
| value | The value of the build property. |

### Description

Adds a value to build property list of the given build configuration(s).

Duplicate build properties are ignored. Values for names `LIBRARY_SEARCH_PATHS` and `FRAMEWORK_SEARCH_PATHS` are quoted if they contain spaces.

```csharp
using UnityEngine;
using UnityEditor;
using UnityEditor.iOS.Xcode;
using UnityEditor.Callbacks;
using System.IO;public class Sample_AddBuildPropertyForConfig  
{
    [PostProcessBuild]
    public static void OnPostprocessBuild(BuildTarget buildTarget, string pathToBuiltProject)
    {        // Stop processing if build target is not iOS
        if (buildTarget != BuildTarget.iOS)
            return;        // Initialize PBXProject
        string projectPath = PBXProject.GetPBXProjectPath(pathToBuiltProject);
        PBXProject pbxProject = new PBXProject();
        pbxProject.ReadFromFile(projectPath);        // Get GUID for Main target  
        string mainTargetGuid = pbxProject.GetUnityMainTargetGuid();        // Add the Build Config with a given name
        string configName = "exampleConfig";
        pbxProject.AddBuildConfig(configName);        // Get the GUID for the newly created config
        string configGuid = pbxProject.BuildConfigByName(mainTargetGuid, configName);        // Add a Build Property to the "exampleConfig"
        pbxProject.AddBuildPropertyForConfig(configGuid, "exampleProperty", "exampleValue");        // Apply changes to the pbxproj file
        pbxProject.WriteToFile(projectPath);
    }
}
```
