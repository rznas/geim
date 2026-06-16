<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/iOS.Xcode.PBXProject.FindFileGuidByRealPath.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| path | The physical path of the file. |
| sourceTree | The source tree path is relative to. The PBXSourceTree.Group tree is not supported. |

### Returns

**string** The GUID of the file if the search succeeded. Returns null if not successful.

### Description

Finds a file with the given physical path in the project.

The version without source tree argument matches paths of all known files. Use this overload with care.

```csharp
using UnityEngine;
using UnityEditor;
using System.IO;
using UnityEditor.Callbacks;
using UnityEditor.iOS.Xcode;public class Sample_FindFileGuidByRealPath  
{
    [PostProcessBuild]
    public static void OnPostprocessBuild(BuildTarget buildTarget, string pathToBuiltProject)
    {        // Stop processing if build target is not iOS
        if (buildTarget != BuildTarget.iOS)
            return;        // Initialize PBXProject
        string projectPath = PBXProject.GetPBXProjectPath(pathToBuiltProject);
        PBXProject pbxProject = new PBXProject();
        pbxProject.ReadFromFile(projectPath);        // Get the GUID by using it's real path and print it to the Console
        string filePath = "Path/To/ExampleFile.txt";
        string fileGuid = pbxProject.FindFileGuidByRealPath(filePath);
        Debug.Log("File GUID: " + fileGuid);        // Apply changes to the pbxproj file
        pbxProject.WriteToFile(projectPath);
    }
}
```
