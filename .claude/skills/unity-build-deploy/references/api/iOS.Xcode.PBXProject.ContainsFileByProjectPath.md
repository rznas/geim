<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/iOS.Xcode.PBXProject.ContainsFileByProjectPath.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| path | The project path of the file. |

### Returns

**bool** Returns true if the project contains the file.

### Description

Checks if the project contains a file with the given project path.

```csharp
using UnityEngine;
using UnityEditor;
using System.IO;
using UnityEditor.Callbacks;
using UnityEditor.iOS.Xcode;public class Sample_ContainsFileByProjectPath  
{
    [PostProcessBuild]
    public static void OnPostprocessBuild(BuildTarget buildTarget, string pathToBuiltProject)
    {        // Stop processing if build target is not iOS
        if (buildTarget != BuildTarget.iOS)
            return;        // Initialize PBXProject
        string projectPath = PBXProject.GetPBXProjectPath(pathToBuiltProject);
        PBXProject pbxProject = new PBXProject();
        pbxProject.ReadFromFile(projectPath);        string fileToSearch = "Path/To/File/ExamplePlugin.mm";        // Check if the project contains a file by using a path relative to the Xcode project structure
        if (pbxProject.ContainsFileByProjectPath(fileToSearch))
        {
            Debug.Log("File " + fileToSearch + " was found.");
            // Continue your logic
        }
        else
        {
            Debug.Log("File " + fileToSearch + " was not found.");
        }        // If any changes were made to the PBXProject instance, apply changes to the pbxproj file
        pbxProject.WriteToFile(projectPath);
    }
}
```
