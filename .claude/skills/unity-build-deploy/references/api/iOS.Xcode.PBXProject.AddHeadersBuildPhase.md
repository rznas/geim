<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/iOS.Xcode.PBXProject.AddHeadersBuildPhase.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| targetGuid | The GUID of the target, such as the one returned by TargetGuidByName. |

### Returns

**string** Returns the GUID of the new phase.

### Description

Creates a new headers build phase for a given target.

If the headers build phase is already configured for a target, the function returns the existing phase.

The new phase is placed at the end of the list of build phases configured for the target.

```csharp
using UnityEditor;
using System.IO;
using UnityEditor.Callbacks;
using UnityEditor.iOS.Xcode;public class Sample_AddHeadersBuildPhase  
{
    [PostProcessBuild]
    public static void OnPostprocessBuild(BuildTarget buildTarget, string pathToBuiltProject)
    {        // Stop processing if build target is not iOS
        if (buildTarget != BuildTarget.iOS)
            return;        // Initialize PBXProject
        string projectPath = PBXProject.GetPBXProjectPath(pathToBuiltProject);
        PBXProject pbxProject = new PBXProject();
        pbxProject.ReadFromFile(projectPath);        // Get the GUID of the target you want to add the Headers Build Phase to
        string mainTargetGuid = pbxProject.GetUnityMainTargetGuid();        // Add the Headers Build Phase. Note that if this phase already exists, the function doesn't create a new one and returns GUID to the existing phase
        pbxProject.AddHeadersBuildPhase(mainTargetGuid);        // Apply changes to the pbxproj file
        pbxProject.WriteToFile(projectPath);
    }
}
```
