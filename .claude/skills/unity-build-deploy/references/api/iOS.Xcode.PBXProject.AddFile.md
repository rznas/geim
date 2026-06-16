<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/iOS.Xcode.PBXProject.AddFile.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| path | The physical path to the file on the filesystem. |
| projectPath | The project path to the file as viewed in Xcode. |
| sourceTree | The source tree the path is relative to. By default it's PBXSourceTree.Source. **Note**: PBXSourceTree.Group tree is not supported. |

### Returns

**string** The GUID of the added file. You can use it later, for example, to add the file for building to targets.

### Description

Adds a new file reference to the list of known files.

The group structure is automatically created to correspond to the project path. To add the file to the list of files to build, pass the returned value to AddFileToBuild.

```csharp
using UnityEngine;
using UnityEditor;
using System.IO;
using UnityEditor.Callbacks;
using UnityEditor.iOS.Xcode;public class Sample_AddFile  
{
    [PostProcessBuild]
    public static void OnPostprocessBuild(BuildTarget buildTarget, string pathToBuiltProject)
    {        // Stop processing if build target is not iOS
        if (buildTarget != BuildTarget.iOS)
            return;        // Initialize PBXProject
        string projectPath = PBXProject.GetPBXProjectPath(pathToBuiltProject);
        PBXProject pbxProject = new PBXProject();
        pbxProject.ReadFromFile(projectPath);        // Specify the file path you want to add to the Xcode project
        string filePath = Path.Combine(Application.dataPath, "Resources/InputFile.txt");
        
        // Add the file to the 'Resources' subfolder in the Xcode project
        pbxProject.AddFile(filePath, "Resources/InputFile.txt");        // Apply changes to the pbxproj file
        pbxProject.WriteToFile(projectPath);
    }
}
```
