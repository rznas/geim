<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/iOS.Xcode.PBXProject.ContainsFileByRealPath.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| path | The physical path of the file. |
| sourceTree | The source tree path the file is relative to. The PBXSourceTree.Group tree is not supported. |

### Returns

**bool** Returns true if the project contains the file, false otherwise.

### Description

Checks if the project contains a file with the given physical path.

The version without source tree argument searches across all absolute trees. Use this overload with care.

```csharp
using UnityEngine;
using UnityEditor;
using System.IO;
using UnityEditor.Callbacks;
using UnityEditor.iOS.Xcode;public class Sample_ContainsFileByRealPath  
{
    [PostProcessBuild]
    public static void OnPostprocessBuild(BuildTarget buildTarget, string pathToBuiltProject)
    {        // Stop processing if build target is not iOS
        if (buildTarget != BuildTarget.iOS)
            return;        // Initialize PBXProject
        string projectPath = PBXProject.GetPBXProjectPath(pathToBuiltProject);
        PBXProject pbxProject = new PBXProject();
        pbxProject.ReadFromFile(projectPath);        string fileToSearch = "Path/To/File/ExamplePlugin.mm";        // Check if the project contains a file by using it's real path
        if (pbxProject.ContainsFileByRealPath(fileToSearch))
        {
            Debug.Log("File " + fileToSearch + " was found.");
            // Continue your logic
        }
        else
        {
            Debug.Log("File " + fileToSearch + " was not found.");
        }        // If any changes were made to the PBXProject instance, apply changes to the pbxproj file
        pbxProject.WriteToFile(projectPath);    }
}
```
