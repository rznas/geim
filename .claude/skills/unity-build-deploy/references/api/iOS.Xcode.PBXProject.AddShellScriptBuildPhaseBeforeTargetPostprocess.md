<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/iOS.Xcode.PBXProject.AddShellScriptBuildPhaseBeforeTargetPostprocess.html
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

**string** Returns the GUID of the new phase.

### Description

Creates a new copy shell script phase for a given target.

If a shell script build phase with the same name, `shellPath`, and `shellScript` is already configured for the target, the function returns the existing phase. The new phase is placed right before Unity's post-process placeholder target, if it exists.

### Parameters

| Parameter | Description |
| --- | --- |
| targetGuid | The GUID of the target, such as the one returned by TargetGuidByName. |
| name | The name of the phase. |
| shellPath | The shell path. |
| shellScript | The shell script. |
| inputPaths | The shell script input dependencies. |

### Returns

**string** Returns the GUID of the new phase.

### Description

Creates a new copy shell script phase for a given target.

If a shell script build phase with the same name, `shellPath`, `shellScript`, and `inputPaths` is already configured for the target, the function returns the existing phase. The new phase is placed right before Unity's post-process placeholder target, if it exists.

```csharp
using UnityEditor;
using System.Collections.Generic;
using System.IO;
using UnityEditor.Callbacks;
using UnityEditor.iOS.Xcode;public class Sample_AddShellScriptBuildPhaseBeforeTargetPostprocess  
{
    [PostProcessBuild]
    public static void OnPostprocessBuild(BuildTarget buildTarget, string pathToBuiltProject)
    {        // Stop processing if build target is not iOS
        if (buildTarget != BuildTarget.iOS)
            return;        // Initialize PBXProject
        string projectPath = PBXProject.GetPBXProjectPath(pathToBuiltProject);
        PBXProject pbxProject = new PBXProject();
        pbxProject.ReadFromFile(projectPath);        // Get GUID of the target you want to add the Shell Script Phase to
        string mainTargetGuid = pbxProject.GetUnityMainTargetGuid();        // Add the Shell Script Phase to that target
        pbxProject.AddShellScriptBuildPhaseBeforeTargetPostprocess(mainTargetGuid, "exampleScript1", "", "echo exampleCommand1");        // Optionally, you can add the Phase with Input Files listed
        pbxProject.AddShellScriptBuildPhaseBeforeTargetPostprocess(mainTargetGuid, "exampleScript2", "", "echo exampleCommand2", new List<string>() { "InputFile1" });        // Apply changes to the pbxproj file
        pbxProject.WriteToFile(projectPath);
    }
}
```
