<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/iOS.Xcode.PBXProject.FindFileGuidByProjectPath.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| path | The project path of the file. |

### Returns

**string** The GUID of the file if the search succeeded. Returns null if not successful.

### Description

Finds a file with the given project path in the project.

```csharp
using UnityEngine;
using UnityEditor;
using System.IO;
using UnityEditor.Callbacks;
using UnityEditor.iOS.Xcode;public class Sample_FindFileGuidByProjectPath  
{
    [PostProcessBuild]
    public static void OnPostprocessBuild(BuildTarget buildTarget, string pathToBuiltProject)
    {        // Stop processing if build target is not iOS
        if (buildTarget != BuildTarget.iOS)
            return;        // Initialize PBXProject
        string projectPath = PBXProject.GetPBXProjectPath(pathToBuiltProject);
        PBXProject pbxProject = new PBXProject();
        pbxProject.ReadFromFile(projectPath);        // Get the GUID by using a path relative to the Xcode project structure and print it to the Console
        string filePath = "Path/To/ExampleFile.txt";
        string fileGuid = pbxProject.FindFileGuidByProjectPath(filePath);
        Debug.Log("File GUID: " + fileGuid);        // Apply changes to the pbxproj file
        pbxProject.WriteToFile(projectPath);
    }
}
```
