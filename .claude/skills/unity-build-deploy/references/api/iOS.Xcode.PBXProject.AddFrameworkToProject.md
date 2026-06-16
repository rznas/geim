<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/iOS.Xcode.PBXProject.AddFrameworkToProject.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| targetGuid | The GUID of the build configuration as returned by TargetGuidByName. |
| framework | The name of the framework. The extension of the filename must be `.framework`. |
| weak | True if the framework is optional, for example if it's weakly linked, and false if the framework is required. |

### Description

Adds a system framework dependency for the specified target.

The function assumes system frameworks are located in the `System/Library/Frameworks`folder in the SDK source tree. The framework is added to Frameworks logical folder in the project.

```csharp
using System.IO;
using UnityEngine;
using UnityEditor;
using UnityEditor.iOS.Xcode;
using UnityEditor.Callbacks;
using System.Collections;public class Sample_AddFrameworkToProject
{    [PostProcessBuild]
    public static void OnPostprocessBuild(BuildTarget buildTarget, string pathToBuiltProject)
    {        // Stop processing if build target is not iOS
        if (buildTarget != BuildTarget.iOS)
            return;        // Initialize PBXProject
        string projectPath = PBXProject.GetPBXProjectPath(pathToBuiltProject);
        PBXProject pbxProject = new PBXProject();
        pbxProject.ReadFromFile(projectPath);        // Get GUIDs for UnityFramework and Main targets
        string unityFrameworkTargetGuid = pbxProject.GetUnityFrameworkTargetGuid();
        string mainTargetGuid = pbxProject.GetUnityMainTargetGuid();        // Add a required framework to UnityFramework target 
        pbxProject.AddFrameworkToProject(unityFrameworkTargetGuid, "CoreBluetooth.framework", false);        // Add an optional framework to main target
        pbxProject.AddFrameworkToProject(mainTargetGuid, "MapKit.framework", true);        // Apply changes to the pbxproj file
        pbxProject.WriteToFile(projectPath);
    }
}
```
