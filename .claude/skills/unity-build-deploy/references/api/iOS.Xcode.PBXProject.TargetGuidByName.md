<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/iOS.Xcode.PBXProject.TargetGuidByName.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| name | The name of the native target. |

### Returns

**string** The GUID identifying the native target.

### Description

Returns the GUID of the native target with the given name.

**Note**: To retrieve a GUID for a Unity generated target, use GetUnityMainTargetGuid or GetUnityFrameworkTargetGuid

```csharp
using UnityEditor;
using System.IO;
using UnityEditor.Callbacks;
using UnityEditor.iOS.Xcode;public class Sample_TargetGuidByName  
{
    [PostProcessBuild]
    public static void OnPostprocessBuild(BuildTarget buildTarget, string pathToBuiltProject)
    {        // Stop processing if build target is not iOS
        if (buildTarget != BuildTarget.iOS)
            return;        // Initialize PBXProject
        string projectPath = PBXProject.GetPBXProjectPath(pathToBuiltProject);
        PBXProject pbxProject = new PBXProject();
        pbxProject.ReadFromFile(projectPath);        // Get GUID for the UnityFramework using it's name 
        string unityFrameworkGuid = pbxProject.TargetGuidByName("UnityFramework");        // The unityFrameworkGuid can be later used to specify UnityFramework as the target when manipulating the pbxproj file
        pbxProject.AddFrameworkToProject(unityFrameworkGuid, "Security.framework", false);
        pbxProject.SetBuildProperty(unityFrameworkGuid, "ENABLE_BITCODE", "NO");        // Apply changes to the pbxproj file
        pbxProject.WriteToFile(projectPath);
    }
}
```
