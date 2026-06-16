<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/iOS.Xcode.PBXProject.GetBuildPhaseType.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| phaseGuid | GUID of the phase. |

### Returns

**string** The type of the build phase.

### Description

Returns the type of the build phase with the specified GUID.

The defined build phase types are `PBXSourcesBuildPhase`, `PBXFrameworksBuildPhase`, `PBXResourcesBuildPhase`, `PBXCopyFilesBuildPhase`, and `PBXShellScriptBuildPhase`.

```csharp
using UnityEngine;
using UnityEditor;
using System.IO;
using UnityEditor.Callbacks;
using UnityEditor.iOS.Xcode;public class Sample_GetBuildPhaseType  
{
    [PostProcessBuild]
    public static void OnPostprocessBuild(BuildTarget buildTarget, string pathToBuiltProject)
    {        // Stop processing if build target is not iOS
        if (buildTarget != BuildTarget.iOS)
            return;        // Initialize PBXProject
        string projectPath = PBXProject.GetPBXProjectPath(pathToBuiltProject);
        PBXProject pbxProject = new PBXProject();
        pbxProject.ReadFromFile(projectPath);        // Get the GUID of the target you want
        string mainTargetGuid = pbxProject.GetUnityMainTargetGuid();        // Retrieve the GUIDs of all Build Phases for the target and print their types to the Console
        string[] buildPhases = pbxProject.GetAllBuildPhasesForTarget(mainTargetGuid);
        foreach (string phaseGuid in buildPhases)
        {
            string phaseType = pbxProject.GetBuildPhaseType(phaseGuid);
            Debug.Log($"Type: {phaseType}");
        }
    }
}
```
