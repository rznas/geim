<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/iOS.Xcode.PBXProject.AddTargetDependency.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| targetGuid | The GUID of the target to which you are adding a dependency. |
| targetDependencyGuid | The GUID of the dependency target. |
| dependencyName | The name of the dependency target. |

### Description

Creates a dependency between this target and another target. The other target may be in a different project.

```csharp
using UnityEditor;
using System.IO;
using UnityEditor.Callbacks;
using UnityEditor.iOS.Xcode;public class Sample_AddTargetDependency  
{
    [PostProcessBuild]
    public static void OnPostprocessBuild(BuildTarget buildTarget, string pathToBuiltProject)
    {        // Stop processing if build target is not iOS
        if (buildTarget != BuildTarget.iOS)
            return;        // Initialize PBXProject
        string projectPath = PBXProject.GetPBXProjectPath(pathToBuiltProject);
        PBXProject pbxProject = new PBXProject();
        pbxProject.ReadFromFile(projectPath);        // Get GUIDs of the two targets you want to set up dependency between
        string mainTargetGuid = pbxProject.GetUnityMainTargetGuid();
        string newTargetGuid = pbxProject.AddTarget("ExampleTarget", "app", "example.type");        // Add the Target dependency
        pbxProject.AddTargetDependency(mainTargetGuid, newTargetGuid);        // Apply changes to the pbxproj file
        pbxProject.WriteToFile(projectPath);
    }
}
```
