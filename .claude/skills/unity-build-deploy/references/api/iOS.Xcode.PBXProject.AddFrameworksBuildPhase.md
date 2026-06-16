<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/iOS.Xcode.PBXProject.AddFrameworksBuildPhase.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| targetGuid | The GUID of the target, such as the one returned by TargetGuidByName. |

### Returns

**string** Returns the GUID of the new phase.

### Description

Creates a new frameworks build phase for given target.

If the frameworks build phase is already configured for the target, the function returns the existing phase.

The new phase is placed at the end of the list of build phases configured for the target.

```csharp
using UnityEditor;
using System.IO;
using UnityEditor.Callbacks;
using UnityEditor.iOS.Xcode;public class Sample_AddFrameworksBuildPhase  
{
    [PostProcessBuild]
    public static void OnPostprocessBuild(BuildTarget buildTarget, string pathToBuiltProject)
    {        // Stop processing if build target is not iOS
        if (buildTarget != BuildTarget.iOS)
            return;        // Initialize PBXProject
        string projectPath = PBXProject.GetPBXProjectPath(pathToBuiltProject);
        PBXProject pbxProject = new PBXProject();
        pbxProject.ReadFromFile(projectPath);        // Get GUID of the target you want to add the Framework Build Phase to
        string mainTargetGuid = pbxProject.GetUnityMainTargetGuid();        // Add the Framework Build Phase. Note that if this phase already exists, the function doesn't create a new one and returns GUID to the existing phase
        pbxProject.AddFrameworksBuildPhase(mainTargetGuid);        // Apply changes to the pbxproj file
        pbxProject.WriteToFile(projectPath);
    }
}
```
