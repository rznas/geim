<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/iOS.Xcode.PBXProject.RemoveFrameworkFromProject.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| targetGuid | The GUID of the target, such as the one returned by TargetGuidByName. |
| framework | The name of the framework. The extension of the filename must be `.framework`. |

### Description

Removes a system framework dependency for the specified target.

The function assumes system frameworks are located in the `System/Library/Frameworks` folder in the SDK source tree.

```csharp
using UnityEditor;
using System.IO;
using UnityEditor.Callbacks;
using UnityEditor.iOS.Xcode;public class Sample_RemoveFrameworkFromProject  
{
    [PostProcessBuild]
    public static void OnPostprocessBuild(BuildTarget buildTarget, string pathToBuiltProject)
    {        // Stop processing if build target is not iOS
        if (buildTarget != BuildTarget.iOS)
            return;        // Initialize PBXProject
        string projectPath = PBXProject.GetPBXProjectPath(pathToBuiltProject);
        PBXProject pbxProject = new PBXProject();
        pbxProject.ReadFromFile(projectPath);        // Get the target GUID
        string unityFrameworkTargetGuid = pbxProject.GetUnityFrameworkTargetGuid();        // Remove a framework from UnityFramework target
        pbxProject.RemoveFrameworkFromProject(unityFrameworkTargetGuid, "CoreMedia.framework");        // Apply changes to the pbxproj file
        pbxProject.WriteToFile(projectPath);
    }
}
```
