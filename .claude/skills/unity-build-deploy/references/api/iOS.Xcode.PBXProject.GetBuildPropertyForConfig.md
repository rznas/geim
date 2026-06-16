<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/iOS.Xcode.PBXProject.GetBuildPropertyForConfig.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| configGuid | The GUID of the build configuration as returned by BuildConfigByName. |
| name | The name of the build property. |

### Returns

**string** The specified build property value.

### Description

Gets a build property value for the given name in the specified build configuration(s). If a property has multiple values they are delimited by a space.

Duplicate build properties are ignored. Values for names `LIBRARY_SEARCH_PATHS` and `FRAMEWORK_SEARCH_PATHS` are quoted if they contain spaces.

```csharp
using UnityEngine;
using UnityEditor;
using System.IO;
using UnityEditor.Callbacks;
using UnityEditor.iOS.Xcode;public class Sample_GetBuildPropertyForConfig  
{
    [PostProcessBuild]
    public static void OnPostprocessBuild(BuildTarget buildTarget, string pathToBuiltProject)
    {        // Stop processing if build target is not iOS
        if (buildTarget != BuildTarget.iOS)
            return;        // Initialize PBXProject
        string projectPath = PBXProject.GetPBXProjectPath(pathToBuiltProject);
        PBXProject pbxProject = new PBXProject();
        pbxProject.ReadFromFile(projectPath);        // Get GUID for main target
        string mainTargetGuid = pbxProject.GetUnityMainTargetGuid();        // Get "Architecture" property for "Debug" configuration in main target
        string configGuid = pbxProject.BuildConfigByName(mainTargetGuid, "Debug");
        string architectures = pbxProject.GetBuildPropertyForConfig(configGuid, "ARCHS"); 
        Debug.Log("architectures: " + architectures);
    }
}
```
