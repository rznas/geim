<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/iOS.Xcode.PBXProject.AddRemotePackageReferenceWithVersionRange.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| url | The URL of the repository. |
| minVersion | The minimum version to allow updates from. |
| maxVersion | The maximum version to allow updates to. |

### Returns

**string** Returns the GUID of the remote package reference.

### Description

Adds a reference to the remote package and allows updates in the given version range.

```csharp
using UnityEditor;
using System.IO;
using UnityEditor.Callbacks;
using UnityEditor.iOS.Xcode;public class Sample_AddRemotePackageReferenceWithVersionRange  
{
    [PostProcessBuild]
    public static void OnPostprocessBuild(BuildTarget buildTarget, string pathToBuiltProject)
    {        // Stop processing if build target is not iOS
        if (buildTarget != BuildTarget.iOS)
            return;        // Initialize PBXProject
        string projectPath = PBXProject.GetPBXProjectPath(pathToBuiltProject);
        PBXProject pbxProject = new PBXProject();
        pbxProject.ReadFromFile(projectPath);        // Get the GUID you want to add the package to
        string mainTargetGuid = pbxProject.GetUnityMainTargetGuid();        // Get the GUID of the Remote Package using the URL, minimum and maximum allowed versions
        string packageGuid = pbxProject.AddRemotePackageReferenceWithVersionRange("https://github.com/apple/swift-system.git", "1.2.0", "1.3.0");        // Add the package to the Xcode project
        pbxProject.AddRemotePackageFrameworkToProject(pbxProject.GetUnityMainTargetGuid(), "SystemPackage", packageGuid, false);        // Apply changes to the pbxproj file
        pbxProject.WriteToFile(projectPath);
    }
}
```
