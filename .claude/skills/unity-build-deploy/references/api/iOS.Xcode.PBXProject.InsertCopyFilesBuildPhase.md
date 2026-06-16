<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/iOS.Xcode.PBXProject.InsertCopyFilesBuildPhase.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| index | The position at which to insert the new build phase. If it's higher than the total number of build phases, the new phase is added at the end. |
| targetGuid | The GUID of the target, such as the one returned by TargetGuidByName. |
| name | The name of the phase. |
| dstPath | The shell path. |
| subfolderSpec | The subfolder spec. The following usages are known: `10` for embedding frameworks.`13` for embedding app extension content.`16` for embedding watch content. |

### Returns

**string** Returns the GUID of the new phase.

### Description

Creates a new copy files build phase for a given target.

The build phase is inserted at the specified position. You can query all the defined build phases using GetAllBuildPhasesForTarget.

```csharp
using UnityEditor;
using System.IO;
using UnityEditor.Callbacks;
using UnityEditor.iOS.Xcode;public class Sample_InsertCopyFilesBuildPhase  
{
    [PostProcessBuild]
    public static void OnPostprocessBuild(BuildTarget buildTarget, string pathToBuiltProject)
    {        // Stop processing if build target is not iOS
        if (buildTarget != BuildTarget.iOS)
            return;        // Initialize PBXProject
        string projectPath = PBXProject.GetPBXProjectPath(pathToBuiltProject);
        PBXProject pbxProject = new PBXProject();
        pbxProject.ReadFromFile(projectPath);        // Get main target GUID  
        string mainTargetGuid = pbxProject.GetUnityMainTargetGuid();        // Insert a Copy Files Build Phase to the main target as first custom build phase (index 0)
        pbxProject.InsertCopyFilesBuildPhase(0, mainTargetGuid, "ExamplePhase", "path/to/file", "10");        // Apply changes to the pbxproj file
        pbxProject.WriteToFile(projectPath);
    }
}
```
