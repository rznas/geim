<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/iOS.Xcode.ProjectCapabilityManager.AddNetworkSlicing5G.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| appCategoryOptions | Mask of NetworkSlicing5GAppCategoryOptions to enable. |
| trafficCategoryOptions | Mask of NetworkSlicing5GTrafficCategoryOptions to enable. |

### Description

Add the 5G Network Slicing capability.

```csharp
using UnityEditor;
using UnityEditor.Callbacks;
using UnityEditor.iOS.Xcode;public class Sample_AddNetworkSlicing5G  
{
    [PostProcessBuild]
    public static void OnPostprocessBuild(BuildTarget buildTarget, string pathToBuiltProject)
    {
        // Stop processing if build target isn't iOS        if (buildTarget != BuildTarget.iOS)
            return;        // Initialize PBXProject
        var projectPath = PBXProject.GetPBXProjectPath(pathToBuiltProject);
        PBXProject pbxProject = new PBXProject();
        pbxProject.ReadFromFile(projectPath);        // Get Main target GUID
        string mainTargetGuid = pbxProject.GetUnityMainTargetGuid();        // Check if there's already an entitlements file created and use it. If not, create a new file called Example.entitlements
        string entitlementsFile = pbxProject.GetBuildPropertyForAnyConfig(mainTargetGuid, "CODE_SIGN_ENTITLEMENTS");
        if (entitlementsFile == null)
        {
            entitlementsFile = string.Format("Example.entitlements");
        }        // Initialize ProjectCapabilityManager and add 'Network Slicing 5G' capability
        // Add additional NetworkSlicing5GAppCategoryOptions and NetworkSlicing5GTrafficCategoryOptions as required.
        ProjectCapabilityManager capabilityManager = new ProjectCapabilityManager(projectPath, entitlementsFile, targetGuid: mainTargetGuid);
        capabilityManager.AddNetworkSlicing5G(ProjectCapabilityManager.NetworkSlicing5GAppCategoryOptions.Communication, ProjectCapabilityManager.NetworkSlicing5GTrafficCategoryOptions.Default);        // Call WriteToFile to save the changes to project file
        capabilityManager.WriteToFile();
    }}
```
