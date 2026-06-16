<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/iOS.Xcode.PBXProject.AddAssetTagForFile.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| targetGuid | The GUID of the target, such as the one returned by TargetGuidByName. |
| fileGuid | The GUID of the file. |
| tag | The name of the asset tag. |

### Description

Adds an asset tag for the given file.

The asset tags identify resources that are downloaded via On Demand Resources functionality. A request for a specific tag initiates the download of all files, configured for that tag.

```csharp
using UnityEngine;
using UnityEditor;
using System.IO;
using UnityEditor.Callbacks;
using UnityEditor.iOS.Xcode;public class Sample_AddAssetTagForFile  
{
    [PostProcessBuild]
    public static void OnPostprocessBuild(BuildTarget buildTarget, string pathToBuiltProject)
    {        // Stop processing if build target is not iOS
        if (buildTarget != BuildTarget.iOS)
            return;        // Initialize PBXProject
        string projectPath = PBXProject.GetPBXProjectPath(pathToBuiltProject);
        PBXProject pbxProject = new PBXProject();
        pbxProject.ReadFromFile(projectPath);        // Get the main target GUID
        string mainTargetGuid = pbxProject.GetUnityMainTargetGuid();        // Add the file you want to specify the Tag for to the Xcode project
        string filePath = Path.Combine(Application.dataPath, "Resources/InputFile.txt");
        string fileGuid = pbxProject.AddFile(filePath, "Resources/InputFile.txt");
        pbxProject.AddFileToBuild(mainTargetGuid, fileGuid);        // Add the Asset Tag for that file
        pbxProject.AddAssetTagForFile(mainTargetGuid, fileGuid, "exampleTag");
        
        // Apply changes to the pbxproj file
        pbxProject.WriteToFile(projectPath);
    }
}
```
