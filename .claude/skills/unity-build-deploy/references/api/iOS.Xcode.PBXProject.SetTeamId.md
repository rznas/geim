<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/iOS.Xcode.PBXProject.SetTeamId.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| targetGuid | The GUID of the target, such as the one returned by TargetGuidByName. |
| teamId | The code signing team ID to be used for this target. |

### Description

Sets the Team ID of an Xcode project.

Use the [Apple developer site](https://developer.apple.com/account/#/membership) to find your Team ID.

```csharp
using UnityEditor;
using System.IO;
using UnityEditor.Callbacks;
using UnityEditor.iOS.Xcode;public class Sample_SetTeamId  
{
    [PostProcessBuild]
    public static void OnPostprocessBuild(BuildTarget buildTarget, string pathToBuiltProject)
    {        // Stop processing if build target is not iOS
        if (buildTarget != BuildTarget.iOS)
            return;        // Initialize PBXProject
        string projectPath = PBXProject.GetPBXProjectPath(pathToBuiltProject);
        PBXProject pbxProject = new PBXProject();
        pbxProject.ReadFromFile(projectPath);        // Get the target GUID
        string mainTargetGuid = pbxProject.GetUnityMainTargetGuid();        // Set team ID for selected target by specifying the 10-character ID string
        pbxProject.SetTeamId(mainTargetGuid, "A1B2C3D4F5");
        
        // Apply changes to the pbxproj file
        pbxProject.WriteToFile(projectPath);
    }
}
```
