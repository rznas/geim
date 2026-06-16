<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/iOS.Xcode.PBXProject.GetRealPathsOfAllFiles.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| sourceTree | The source tree the path is relative to. The default source tree is PBXSourceTree.Source. This does not support the PBXSourceTree.Group. |

### Returns

**IReadOnlyList<string>** Returns paths of all project files that use relative location.

### Description

Return a list of all known files.

```csharp
using UnityEngine;
using UnityEditor;
using System.IO;
using UnityEditor.Callbacks;
using UnityEditor.iOS.Xcode;
using System.Linq;public class Sample_GetRealPathsOfAllFiles  
{
    [PostProcessBuild]
    public static void OnPostprocessBuild(BuildTarget buildTarget, string pathToBuiltProject)
    {        // Stop processing if build target is not iOS
        if (buildTarget != BuildTarget.iOS)
            return;        // Initialize PBXProject
        string projectPath = PBXProject.GetPBXProjectPath(pathToBuiltProject);
        PBXProject pbxProject = new PBXProject();
        pbxProject.ReadFromFile(projectPath);        // Get real paths of all project files that use relative location
        string[] filePaths = pbxProject.GetRealPathsOfAllFiles(PBXSourceTree.Source).ToArray();
        
        // Print all paths to console for debugging
        foreach (string path in filePaths)
        {
            Debug.Log(path);
        }
    }
}
```
