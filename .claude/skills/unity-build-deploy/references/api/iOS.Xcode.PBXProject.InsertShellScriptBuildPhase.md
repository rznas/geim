<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/iOS.Xcode.PBXProject.InsertShellScriptBuildPhase.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| index | The position at which to insert the new build phase. If it's higher than the total number of build phases, the new phase is added at the end. |
| targetGuid | The GUID of the target, such as the one returned by TargetGuidByName. |
| name | The name of the phase. |
| shellPath | The shell path. |
| shellScript | The shell script. |

### Returns

**string** Returns the GUID of the new phase.

### Description

Creates a new shell script build phase for a given target.

The build phase is inserted at the specified position. You can query all the defined build phases using GetAllBuildPhasesForTarget.

```csharp
using UnityEditor;
using System.IO;
using UnityEditor.Callbacks;
using UnityEditor.iOS.Xcode;public class Sample_InsertShellScriptBuildPhase  
{
    [PostProcessBuild]
    public static void OnPostprocessBuild(BuildTarget buildTarget, string pathToBuiltProject)
    {        // Stop processing if build target is not iOS
        if (buildTarget != BuildTarget.iOS)
            return;        // Initialize PBXProject
        string projectPath = PBXProject.GetPBXProjectPath(pathToBuiltProject);
        PBXProject pbxProject = new PBXProject();
        pbxProject.ReadFromFile(projectPath);        // Get GUID of the target you want to add the Shell Script Phase to
        string mainTargetGuid = pbxProject.GetUnityMainTargetGuid();        // Add the Shell Script Phase to that target as first custom Shell Script phase (index 0)
        pbxProject.InsertShellScriptBuildPhase(0, mainTargetGuid, "exampleScript1", "", "echo exampleCommand1");        // Apply changes to the pbxproj file
        pbxProject.WriteToFile(projectPath);
    }
}
```

### Parameters

| Parameter | Description |
| --- | --- |
| index | The position at which to insert the new build phase. If it's higher than the total number of build phases, the new phase is added at the end. |
| targetGuid | The GUID of the target, such as the one returned by TargetGuidByName. |
| name | The name of the phase. |
| shellPath | The shell path. |
| shellScript | The shell script. |
| inputPaths | The shell script input dependencies. |

### Returns

**string** Returns the GUID of the new phase.

### Description

Creates a new shell script build phase for a given target.

The build phase is inserted at the specified position. You can query all the defined build phases using GetAllBuildPhasesForTarget.
