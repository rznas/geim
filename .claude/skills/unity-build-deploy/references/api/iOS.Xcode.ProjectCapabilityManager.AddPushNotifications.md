<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/iOS.Xcode.ProjectCapabilityManager.AddPushNotifications.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| development | Enable or disable development mode. Development mode should be used while testing your application outside of the App Store. |

### Description

Add the Apple Push Notifications capability.

```csharp
using UnityEditor;
using UnityEditor.Callbacks;
using UnityEditor.iOS.Xcode;public class Sample_AddPushNotifications  
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
        }        // Initialize ProjectCapabilityManager and add 'Push Notifications' capability
        ProjectCapabilityManager capabilityManager = new ProjectCapabilityManager(projectPath, entitlementsFile, targetGuid: mainTargetGuid);
        capabilityManager.AddPushNotifications(true);        // Call WriteToFile to save the changes to project file
        capabilityManager.WriteToFile();
    }}
```
