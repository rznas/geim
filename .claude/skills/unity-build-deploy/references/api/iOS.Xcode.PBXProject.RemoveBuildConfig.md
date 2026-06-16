<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/iOS.Xcode.PBXProject.RemoveBuildConfig.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| name | The name of the build configuration. |

### Description

Removes all build configurations with the given name from all targets in the project.

The number and names of the build configurations is a project-wide setting. Each target has the same number of build configurations and the names of these build configurations is the same. The function does nothing if the build configuration with the specified name does not exist.

```csharp
using UnityEditor;
using System.IO;
using UnityEditor.Callbacks;
using UnityEditor.iOS.Xcode;public class Sample_RemoveBuildConfig  
{
    [PostProcessBuild]
    public static void OnPostprocessBuild(BuildTarget buildTarget, string pathToBuiltProject)
    {        // Stop processing if build target is not iOS
        if (buildTarget != BuildTarget.iOS)
            return;        // Initialize PBXProject
        string projectPath = PBXProject.GetPBXProjectPath(pathToBuiltProject);
        PBXProject pbxProject = new PBXProject();
        pbxProject.ReadFromFile(projectPath);        // Remove the configuration name from all targets
        // This can be any custom configuration as well as default Unity configurations such as "Debug", "Release", etc.
        pbxProject.RemoveBuildConfig("ConfigName");
        
        // Apply changes to the pbxproj file
        pbxProject.WriteToFile(projectPath);
    }
}
```
