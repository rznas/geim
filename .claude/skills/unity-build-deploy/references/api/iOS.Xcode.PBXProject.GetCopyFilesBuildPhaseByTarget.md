<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/iOS.Xcode.PBXProject.GetCopyFilesBuildPhaseByTarget.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| targetGuid | The GUID of the target, such as the one returned by TargetGuidByName. |
| name | The name of the phase. |
| dstPath | The destination path. |
| subfolderSpec | The subfolder spec. The following usages are known: `10` for embedding frameworks.`13` for embedding app extension content.`16` for embedding watch content. |

### Returns

**string** Returns the GUID of the matching phase or null if it does not exist.

### Description

Returns the GUID of matching copy files build phase for the given target.

The parameters of existing copy files build phase are matched to the arguments of this function and the GUID of the phase is returned only if a matching build phase is found.

```csharp
using UnityEngine;
using UnityEditor;
using System.IO;
using UnityEditor.Callbacks;
using UnityEditor.iOS.Xcode;
using UnityEditor.iOS.Xcode.Extensions;public class Sample_GetCopyFilesBuildPhaseByTarget  
{
    [PostProcessBuild]
    public static void OnPostprocessBuild(BuildTarget buildTarget, string pathToBuiltProject)
    {        // Stop processing if build target is not iOS
        if (buildTarget != BuildTarget.iOS)
            return;        // Initialize PBXProject
        string projectPath = PBXProject.GetPBXProjectPath(pathToBuiltProject);
        PBXProject pbxProject = new PBXProject();
        pbxProject.ReadFromFile(projectPath);        // Get the target GUID
        string targetGuid = pbxProject.GetUnityMainTargetGuid();        // Get the "Embed Frameworks" build phase GUID 
        string copyFilesPhase = pbxProject.GetCopyFilesBuildPhaseByTarget(targetGuid, "Embed Frameworks", "", "10");        // Log the "Embed Frameworks" build phase GUID for debugging
        Debug.Log("Copy 'Embed Frameworks' phase GUID: " + copyFilesPhase);
    }
}
```
