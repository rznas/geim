<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/iOS.Xcode.PBXProject.AddFileToBuildSection.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| targetGuid | The GUID of the target, such as the one returned by TargetGuidByName. |
| sectionGuid | The GUID of the section to add the file to. |
| fileGuid | The file GUID returned by AddFile or AddFolderReference. |

### Description

Configures file for building for the given native target on specific build section.

The function is equivalent to AddFileToBuild except that a specific build section is defined. In projects containing multiple native targets, you can configure a single file or folder reference to build in all, some, or none of the targets. The file or folder reference is added to appropriate build section depending on the file extension.

```csharp
using UnityEngine;
using UnityEditor;
using System.IO;
using UnityEditor.Callbacks;
using UnityEditor.iOS.Xcode;public class Sample_AddFileToBuildSection  
{
    [PostProcessBuild]
    public static void OnPostprocessBuild(BuildTarget buildTarget, string pathToBuiltProject)
    {        // Stop processing if build target is not iOS
        if (buildTarget != BuildTarget.iOS)
            return;        // Initialize PBXProject
        string projectPath = PBXProject.GetPBXProjectPath(pathToBuiltProject);
        PBXProject pbxProject = new PBXProject();
        pbxProject.ReadFromFile(projectPath);        // Get GUID for Main target
        string mainTargetGuid = pbxProject.GetUnityMainTargetGuid();        // Specify the file path you want to add to the Xcode project
        string filePath = Path.Combine(Application.dataPath, "Resources/InputFile.txt");        // Add the file to 'Resources' subfolder in the Xcode project
        string fileGuid = pbxProject.AddFile(filePath, "Resources/InputFile.txt");        // Get a GUID for the section you want to add the file to
        string resourcePhaseGuid = pbxProject.GetSourcesBuildPhaseByTarget(mainTargetGuid);        // Add the file to build by specifying the section GUID
        pbxProject.AddFileToBuildSection(mainTargetGuid, resourcePhaseGuid, fileGuid);        // Apply changes to the pbxproj file
        pbxProject.WriteToFile(projectPath);
    }
}
```
