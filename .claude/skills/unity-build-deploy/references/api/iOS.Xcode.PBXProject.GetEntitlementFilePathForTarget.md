<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/iOS.Xcode.PBXProject.GetEntitlementFilePathForTarget.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| targetGuid | The GUID of the target, such as the one returned by TargetGuidByName. |

### Returns

**string** The relative path to the entitlement file or `null` if it does not exist.

### Description

Returns the relative path to the entitlement file for the specified build target.

```csharp
using UnityEngine;
using UnityEditor;
using System.IO;
using UnityEditor.Callbacks;
using UnityEditor.iOS.Xcode;public class Sample_GetEntitlementFilePathForTarget  
{
    [PostProcessBuild]
    public static void OnPostprocessBuild(BuildTarget buildTarget, string pathToBuiltProject)
    {        // Stop processing if build target is not iOS
        if (buildTarget != BuildTarget.iOS)
            return;        // Initialize PBXProject
        string projectPath = PBXProject.GetPBXProjectPath(pathToBuiltProject);
        PBXProject pbxProject = new PBXProject();
        pbxProject.ReadFromFile(projectPath);        // Get the target GUID        
        string targetGuid = pbxProject.GetUnityMainTargetGuid();        // Get the entitlements file path 
        string entitlementPath = pbxProject.GetEntitlementFilePathForTarget(targetGuid);        // Log the Entitlement file path to console for debugging
        Debug.Log("Entitlement file path: " + entitlementPath);
    }
}
```
