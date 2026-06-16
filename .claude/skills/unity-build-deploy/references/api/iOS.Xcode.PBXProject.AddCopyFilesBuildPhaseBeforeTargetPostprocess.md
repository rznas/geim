<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/iOS.Xcode.PBXProject.AddCopyFilesBuildPhaseBeforeTargetPostprocess.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| targetGuid | The GUID of the target, such as the one returned by GetUnityFrameworkTargetGuid. |
| name | The name of the phase. |
| dstPath | The destination path. |
| subfolderSpec | The subfolder spec. The following usages are known: `10` for embedding frameworks.`13` for embedding app extension content.`16` for embedding watch content. |

### Returns

**string** Returns the GUID of the new phase.

### Description

Creates a new **Copy Files** build phase for a given target.

If a **Copy Files** build phase with the same name, `dstPath`, and `subfolderSpec` is already configured for the target, the function returns the existing phase. The new phase is placed right before Unity's post-process placeholder target (if it exists).

```csharp
using UnityEngine;
using UnityEditor;
using UnityEditor.iOS.Xcode;
using UnityEditor.Callbacks;
using System.IO;public class Sample_AddCopyFilesBuildPhaseBeforeTargetPostprocess  
{
    [PostProcessBuild]
    public static void OnPostprocessBuild(BuildTarget buildTarget, string pathToBuiltProject)
    {        // Stop processing if build target is not iOS
        if (buildTarget != BuildTarget.iOS)
            return;        // Initialize PBXProject
        string projectPath = PBXProject.GetPBXProjectPath(pathToBuiltProject);
        PBXProject pbxProject = new PBXProject();
        pbxProject.ReadFromFile(projectPath);        // Get main target GUID  
        string mainTargetGuid = pbxProject.GetUnityMainTargetGuid();        // Add a Copy Files Build Phase before Unity Postprocess phase to the main target
        pbxProject.AddCopyFilesBuildPhaseBeforeTargetPostprocess(mainTargetGuid, "ExamplePhase", "path/to/file", "10");        // Apply changes to the pbxproj file
        pbxProject.WriteToFile(projectPath);
    }
}
```
