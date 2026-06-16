<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/iOS.Xcode.PBXProject.GetBuildPropertyForAnyConfig.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| targetGuid | The GUID of the target, such as one returned by TargetGuidByName. |
| targetGuids | The GUID of the targets, such as the one returned by TargetGuidByName. |
| name | The name of the build property. |

### Returns

**string** The specified build property value.

### Description

Gets a build property value for the given name in all the build configurations for the specified target(s). If a property has multiple values, those are delimited by a space.

Values for names `LIBRARY_SEARCH_PATHS` and `FRAMEWORK_SEARCH_PATHS` are quoted if they contain spaces.

```csharp
using UnityEngine;
using UnityEditor;
using System.IO;
using UnityEditor.Callbacks;
using UnityEditor.iOS.Xcode;public class Sample_GetBuildPropertyForAnyConfig  
{
    [PostProcessBuild]
    public static void OnPostprocessBuild(BuildTarget buildTarget, string pathToBuiltProject)
    {        // Stop processing if build target is not iOS
        if (buildTarget != BuildTarget.iOS)
            return;        // Initialize PBXProject
        string projectPath = PBXProject.GetPBXProjectPath(pathToBuiltProject);
        PBXProject pbxProject = new PBXProject();
        pbxProject.ReadFromFile(projectPath);        // Get the GUID for main target
        string mainTargetGuid = pbxProject.GetUnityMainTargetGuid();        // Get `Minimum iOS version` property for any configuration in main target
        string minVersion = pbxProject.GetBuildPropertyForAnyConfig(mainTargetGuid, "IPHONEOS_DEPLOYMENT_TARGET");
        Debug.Log("minVersion: " + minVersion);
    }
}
```
