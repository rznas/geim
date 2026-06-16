<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/iOS.Xcode.PBXProject.GetShellScriptBuildPhaseForTarget.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| targetGuid | The GUID of the target, such as the one returned by TargetGuidByName. |
| name | The name of the phase. |
| shellPath | The shell path. |
| shellScript | The shell script. |

### Returns

**string** Returns the GUID of the matching phase or null if it does not exist.

### Description

Returns the GUID of matching copy shell script build phase for the given target.

If the target already has a shell script build phase with the same `name`, `shellPath`, and `shellScript` configured for it, the function returns the existing phase. The new phase is placed at the end of the list of build phases configured for the target.

### Parameters

| Parameter | Description |
| --- | --- |
| targetGuid | The GUID of the target, such as one returned by TargetGuidByName. |
| name | The name of the phase. |
| shellPath | The shell path. |
| shellScript | The shell script. |
| inputPaths | The shell script input dependencies. |

### Returns

**string** Returns the GUID of the matching phase or null if it does not exist.

### Description

Returns the GUID of matching copy shell script build phase for the given target.

If the target already has a shell script build phase with the same `name`, `shellPath`, and `shellScript` configured for it, the function returns the existing phase. The new phase is placed at the end of the list of build phases configured for the target.

```csharp
using UnityEngine;
using UnityEditor;
using System.IO;
using UnityEditor.Callbacks;
using UnityEditor.iOS.Xcode;public class Sample_GetShellScriptBuildPhaseForTarget  
{
    [PostProcessBuild]
    public static void OnPostprocessBuild(BuildTarget buildTarget, string pathToBuiltProject)
    {        // Stop processing if build target is not iOS
        if (buildTarget != BuildTarget.iOS)
            return;        // Initialize PBXProject
        string projectPath = PBXProject.GetPBXProjectPath(pathToBuiltProject);
        PBXProject pbxProject = new PBXProject();
        pbxProject.ReadFromFile(projectPath);        // Get the target GUID
        string targetGuid = pbxProject.GetUnityMainTargetGuid();        // Get the "Shell Script" build phase GUID by providing all the relevant information
        string shellScriptBuildPhase = pbxProject.GetShellScriptBuildPhaseForTarget(targetGuid, "exampleScript1", "", "echo exampleCommand1");        // Log the "Shell Script" build phase GUID for debugging
        Debug.Log("'Shell Script' build phase GUID: " + shellScriptBuildPhase);
    }
}
```
