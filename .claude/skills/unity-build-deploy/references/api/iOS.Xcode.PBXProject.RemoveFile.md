<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/iOS.Xcode.PBXProject.RemoveFile.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| fileGuid | The GUID of the file or folder reference. |

### Description

Removes the given file from project.

The file is removed from the list of files to build for each native target and also removed from the list of known files.

```csharp
using UnityEditor;
using System.IO;
using UnityEditor.Callbacks;
using UnityEditor.iOS.Xcode;public class Sample_RemoveFile  
{
    [PostProcessBuild]
    public static void OnPostprocessBuild(BuildTarget buildTarget, string pathToBuiltProject)
    {        // Stop processing if build target is not iOS
        if (buildTarget != BuildTarget.iOS)
            return;        // Initialize PBXProject
        string projectPath = PBXProject.GetPBXProjectPath(pathToBuiltProject);
        PBXProject pbxProject = new PBXProject();
        pbxProject.ReadFromFile(projectPath);        // Get the file GUID
        string filePath = "Path/To/ExampleFile.txt";
        string fileGuid = pbxProject.FindFileGuidByProjectPath(filePath);        // Remove the file from project
        pbxProject.RemoveFile(fileGuid);        // Apply changes to the pbxproj file
        pbxProject.WriteToFile(projectPath);
    }
}
```
