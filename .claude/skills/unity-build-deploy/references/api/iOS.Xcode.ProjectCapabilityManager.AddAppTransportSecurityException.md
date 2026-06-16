<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/iOS.Xcode.ProjectCapabilityManager.AddAppTransportSecurityException.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| entries | The list of App Transport Security Exception entries to configure. |
| overwrite | Set to true to overwrite existing data. The default value is false. |

### Description

Add the App Transport Security Exception capability.

```csharp
using UnityEditor;
using UnityEditor.Callbacks;
using UnityEditor.iOS.Xcode;public class Sample_AddAppTransportSecurityException  
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
        ProjectCapabilityManager capabilityManager = new ProjectCapabilityManager(projectPath, entitlementsFile, targetGuid: mainTargetGuid);
        
        // Set up App Transport Security Exception domain array
        ProjectCapabilityManager.AppTransportSecurityExceptionEntry[] entries = new ProjectCapabilityManager.AppTransportSecurityExceptionEntry[]{
            new ProjectCapabilityManager.AppTransportSecurityExceptionEntry("exampledomain.com", true, true, "20.1", true),
            new ProjectCapabilityManager.AppTransportSecurityExceptionEntry("secondexampledomain.com", true, true, "20.3", false),
            new ProjectCapabilityManager.AppTransportSecurityExceptionEntry("thirdexampledomain.com", true, true, "20.4", false)
        };        // Add 'App Transport Security Exception' capability and pass previously created domain array
        capabilityManager.AddAppTransportSecurityException(entries);        // Call WriteToFile to save the changes to project file
        capabilityManager.WriteToFile();
    }}
```
