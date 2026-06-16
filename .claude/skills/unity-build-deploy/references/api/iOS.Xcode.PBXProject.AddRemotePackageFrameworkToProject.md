<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/iOS.Xcode.PBXProject.AddRemotePackageFrameworkToProject.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| targetGuid | The GUID of the target, such asthe one returned by TargetGuidByName. |
| name | The name of the remote package. |
| packageGuid | The GUID of the remote package reference. |
| weak | Whether to set the framework as optional (i.e. weakly linked). When this is true, it means the framework is optional. When this is false, it means the framework is required. |

### Description

Adds a remote package framework dependency for the specified target.

```csharp
using UnityEditor;
using System.IO;
using UnityEditor.Callbacks;
using UnityEditor.iOS.Xcode;public class Sample_AddRemotePackageFrameworkToProject  
{
    [PostProcessBuild]
    public static void OnPostprocessBuild(BuildTarget buildTarget, string pathToBuiltProject)
    {        // Stop processing if build target is not iOS
        if (buildTarget != BuildTarget.iOS)
            return;        // Initialize PBXProject
        string projectPath = PBXProject.GetPBXProjectPath(pathToBuiltProject);
        PBXProject pbxProject = new PBXProject();
        pbxProject.ReadFromFile(projectPath);        // Get the GUID you want to add the package to
        string mainTargetGuid = pbxProject.GetUnityMainTargetGuid();        // Get the remote package GUID
        string packageGuid = pbxProject.AddRemotePackageReferenceAtVersionUpToNextMinor("https://github.com/apple/swift-system.git", "1.1.0");        // Add the Remote Package to the Xcode project
        pbxProject.AddRemotePackageFrameworkToProject(pbxProject.GetUnityMainTargetGuid(), "SystemPackage", packageGuid, false);
      
        // Apply changes to the pbxproj file
        pbxProject.WriteToFile(projectPath);
    }
}
```
