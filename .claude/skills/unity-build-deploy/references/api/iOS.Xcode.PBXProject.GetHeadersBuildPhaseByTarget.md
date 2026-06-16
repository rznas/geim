<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/iOS.Xcode.PBXProject.GetHeadersBuildPhaseByTarget.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| targetGuid | The GUID of the target, such as one returned by TargetGuidByName. |

### Returns

**string** Returns the GUID of the existing phase or `null` if it does not exist.

### Description

Returns the GUID of the headers build phase for the given target.

```csharp
using UnityEngine;
using UnityEditor;
using System.IO;
using UnityEditor.Callbacks;
using UnityEditor.iOS.Xcode;public class Sample_GetHeadersBuildPhaseByTarget  
{
    [PostProcessBuild]
    public static void OnPostprocessBuild(BuildTarget buildTarget, string pathToBuiltProject)
    {        // Stop processing if build target is not iOS
        if (buildTarget != BuildTarget.iOS)
            return;        // Initialize PBXProject
        string projectPath = PBXProject.GetPBXProjectPath(pathToBuiltProject);
        PBXProject pbxProject = new PBXProject();
        pbxProject.ReadFromFile(projectPath);        // Get the target GUID
        string targetGuid = pbxProject.GetUnityMainTargetGuid();        // Get the "Headers Build" build phase GUID 
        string headersBuildPhase = pbxProject.GetHeadersBuildPhaseByTarget(targetGuid);        // Log the "Headers Build" phase GUID for debugging
        Debug.Log("'Headers Build' phase GUID: " + headersBuildPhase);
    }
}
```
