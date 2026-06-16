<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/iOS.Xcode.PBXProject.RemoveFileFromBuild.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| targetGuid | The GUID of the target, such as the one returned by TargetGuidByName. |
| fileGuid | The GUID of the file or folder reference. |

### Description

Removes the given file from the list of files to build for the given target.

```csharp
using UnityEditor;
using System.IO;
using UnityEditor.Callbacks;
using UnityEditor.iOS.Xcode;public class Sample_RemoveFileFromBuild  
{
    [PostProcessBuild]
    public static void OnPostprocessBuild(BuildTarget buildTarget, string pathToBuiltProject)
    {        // Stop processing if build target is not iOS
        if (buildTarget != BuildTarget.iOS)
            return;        // Initialize PBXProject
        string projectPath = PBXProject.GetPBXProjectPath(pathToBuiltProject);
        PBXProject pbxProject = new PBXProject();
        pbxProject.ReadFromFile(projectPath);        // Get the GUID for the Main target
        string mainTargetGuid = pbxProject.GetUnityMainTargetGuid();        // Get the file GUID you want to remove
        string filePath = "Path/To/ExampleFile.txt";
        string fileGuid = pbxProject.FindFileGuidByProjectPath(filePath);        // Remove the file from build. Note that this doesn't remove the file from project
        pbxProject.RemoveFileFromBuild(mainTargetGuid, fileGuid);        // Apply changes to the pbxproj file
        pbxProject.WriteToFile(projectPath);
    }
}
```
