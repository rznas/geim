<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/iOS.Xcode.ProjectCapabilityManager.AddiCloud.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| enableKeyValueStorage | Enables or disables key-value Storage. |
| enableiCloudDocument | Enables or disables iCloud document storage. |
| enablecloudKit | Enables cloudKit option. |
| addDefaultContainers | Set to `true` to add default containers. |
| customContainers | Array of containers in which to store documents on iCloud. For more information about custom container types, refer to [Manage iCloud document storage and CloudKit containers](https://help.apple.com/xcode/mac/current/#/devcae40ccb9). |

### Description

iCloud Storage APIs enable your apps to store data and documents in iCloud.

**Note**: When key-value storage is enabled, the entitlement `com.apple.developer.ubiquity-kvstore-identifier` is set to `$(TeamIdentifierPrefix)$(CFBundleIdentifier)` and can't be overridden using this method. Some scenarios require a custom value. In those cases, set `com.apple.developer.ubiquity-kvstore-identifier` manually in your entitlements file after building, or manage that key outside of `AddiCloud`.

```csharp
using UnityEditor;
using UnityEditor.Callbacks;
using UnityEditor.iOS.Xcode;public class Sample_AddiCloud  
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
        }        // Initialize ProjectCapabilityManager
        ProjectCapabilityManager capabilityManager = new ProjectCapabilityManager(projectPath, entitlementsFile, targetGuid: mainTargetGuid);        // Add 'iCloud' capability and pass any arguments & custom containers to match your setup
        string[] containers = new string[] { "iCloud.com.example.container1", "iCloud.com.example.container2" };
        capabilityManager.AddiCloud(true, true, containers);        // Call WriteToFile to save the changes to project file
        capabilityManager.WriteToFile();
    }}
```
