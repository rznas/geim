<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/iOS.Xcode.PBXProject.GetBuildPhaseName.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| phaseGuid | GUID of the phase. |

### Returns

**string** The build phase name if it's defined.

### Description

Returns the name of the build phase with the specified GUID.

For shell script and copy file build phases, the name is returned. For all the other phases, the type is returned. This is the same behavior as GetBuildPhaseType. If a phase with the given GUID isn't available, Null is returned.

```csharp
using UnityEngine;
using UnityEditor;
using System.IO;
using UnityEditor.Callbacks;
using UnityEditor.iOS.Xcode;public class Sample_GetBuildPhaseName  
{
    [PostProcessBuild]
    public static void OnPostprocessBuild(BuildTarget buildTarget, string pathToBuiltProject)
    {        // Stop processing if build target is not iOS
        if (buildTarget != BuildTarget.iOS)
            return;        // Initialize PBXProject
        string projectPath = PBXProject.GetPBXProjectPath(pathToBuiltProject);
        PBXProject pbxProject = new PBXProject();
        pbxProject.ReadFromFile(projectPath);        // Get the GUID of the target you want
        string mainTargetGuid = pbxProject.GetUnityMainTargetGuid();        // Retrieve the GUIDs of all Build Phases for the target and print their names to the Console
        string[] buildPhases = pbxProject.GetAllBuildPhasesForTarget(mainTargetGuid);
        foreach (string phaseGuid in buildPhases)
        {
            string phaseName = pbxProject.GetBuildPhaseName(phaseGuid);
            Debug.Log($"Name: {phaseName}");
        }
    }
}
```
