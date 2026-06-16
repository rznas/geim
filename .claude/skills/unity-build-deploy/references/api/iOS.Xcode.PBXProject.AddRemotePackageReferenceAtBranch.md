<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/iOS.Xcode.PBXProject.AddRemotePackageReferenceAtBranch.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| url | The URL of the repository. |
| branch | The name of the branch in the repository. |

### Returns

**string** Returns the GUID of the remote package reference.

### Description

Adds a reference to the remote package at the given branch.

```csharp
using UnityEditor;
using System.IO;
using UnityEditor.Callbacks;
using UnityEditor.iOS.Xcode;public class Sample_AddRemotePackageReferenceAtBranch  
{
    [PostProcessBuild]
    public static void OnPostprocessBuild(BuildTarget buildTarget, string pathToBuiltProject)
    {        // Stop processing if build target is not iOS
        if (buildTarget != BuildTarget.iOS)
            return;        // Initialize PBXProject
        string projectPath = PBXProject.GetPBXProjectPath(pathToBuiltProject);
        PBXProject pbxProject = new PBXProject();
        pbxProject.ReadFromFile(projectPath);        // Get GUID you want to add the package to
        string mainTargetGuid = pbxProject.GetUnityMainTargetGuid();        // Get the GUID of the Remote Package using the URL and branch
        string packageGuid = pbxProject.AddRemotePackageReferenceAtBranch("https://github.com/apple/swift-system.git", "main");        // Add the package to the Xcode project
        pbxProject.AddRemotePackageFrameworkToProject(pbxProject.GetUnityMainTargetGuid(), "SystemPackage", packageGuid, false);        // Apply changes to the pbxproj file
        pbxProject.WriteToFile(projectPath);
    }
}
```
