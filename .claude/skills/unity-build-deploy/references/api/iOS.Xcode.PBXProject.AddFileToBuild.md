<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/iOS.Xcode.PBXProject.AddFileToBuild.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| targetGuid | The GUID of the target, such as the one returned by GetUnityFrameworkTargetGuid. |
| fileGuid | The file GUID returned by AddFile or AddFolderReference. |

### Description

Configure a file to build for the given native target.

In projects containing multiple native targets, you can configure a single file or folder reference to build in all, some, or none of the targets. The file or folder reference is added to appropriate build section depending on the file extension.

```csharp
using UnityEngine;
using UnityEditor;
using System.IO;
using UnityEditor.Callbacks;
using UnityEditor.iOS.Xcode;public class Sample_AddFileToBuild  
{
    [PostProcessBuild]
    public static void OnPostprocessBuild(BuildTarget buildTarget, string pathToBuiltProject)
    {        // Stop processing if build target is not iOS
        if (buildTarget != BuildTarget.iOS)
            return;        // Initialize PBXProject
        string projectPath = PBXProject.GetPBXProjectPath(pathToBuiltProject);
        PBXProject pbxProject = new PBXProject();
        pbxProject.ReadFromFile(projectPath);        // Get the GUID for Main target
        string mainTargetGuid = pbxProject.GetUnityMainTargetGuid();        // Specify the file path you want to add to the Xcode project
        string filePath = Path.Combine(Application.dataPath, "Resources/InputFile.txt");        // Add the file to 'Resources' subfolder in the Xcode project
        string fileGuid = pbxProject.AddFile(filePath, "Resources/InputFile.txt");        // Add the file to build
        pbxProject.AddFileToBuild(mainTargetGuid, fileGuid);        // Apply changes to the pbxproj file
        pbxProject.WriteToFile(projectPath);
    }
}
```
