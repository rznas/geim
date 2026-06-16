<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/iOS.Xcode.PBXProject.GetAllBuildPhasesForTarget.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| targetGuid | The GUID of the target, such as the one returned by TargetGuidByName. |

### Returns

**string[]** Returns all of the build phases for the specified target.

### Description

Returns all build phases for the specified target.

You can query the type and name of each phase using GetBuildPhaseType and GetBuildPhaseName respectively.

```csharp
using UnityEngine;
using UnityEditor;
using System.IO;
using UnityEditor.Callbacks;
using UnityEditor.iOS.Xcode;public class Sample_GetAllBuildPhasesForTarget  
{
    [PostProcessBuild]
    public static void OnPostprocessBuild(BuildTarget buildTarget, string pathToBuiltProject)
    {        // Stop processing if build target is not iOS
        if (buildTarget != BuildTarget.iOS)
            return;        // Initialize PBXProject
        string projectPath = PBXProject.GetPBXProjectPath(pathToBuiltProject);
        PBXProject pbxProject = new PBXProject();
        pbxProject.ReadFromFile(projectPath);        // Get GUID of the target you want
        string mainTargetGuid = pbxProject.GetUnityMainTargetGuid();        // Retrieve the GUIDs of all Build Phases for the target and print their types and names to the Console
        string[] buildPhases = pbxProject.GetAllBuildPhasesForTarget(mainTargetGuid);
        foreach (string phaseGuid in buildPhases)
        {
            string phaseName = pbxProject.GetBuildPhaseName(phaseGuid);
            string phaseType = pbxProject.GetBuildPhaseType(phaseGuid);
            Debug.Log(string.Format("Name: {0} | Type: {1}", phaseName, phaseType));
        }
    }
}
```
