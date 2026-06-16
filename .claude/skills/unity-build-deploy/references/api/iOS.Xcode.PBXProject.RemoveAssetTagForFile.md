<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/iOS.Xcode.PBXProject.RemoveAssetTagForFile.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| targetGuid | The GUID of the target, such as the one returned by TargetGuidByName. |
| fileGuid | The GUID of the file. |
| tag | The name of the asset tag. |

### Description

Removes an asset tag for the given file.

This function does nothing if the file isn't configured for building in the given target, or if the asset tag is not present in the list of asset tags configured for file. If the file was the last file referring to the given tag across the Xcode project, then the tag is removed from the list of known tags.

```csharp
using UnityEditor;
using System.IO;
using UnityEditor.Callbacks;
using UnityEditor.iOS.Xcode;public class Sample_RemoveAssetTagForFile  
{
    [PostProcessBuild]
    public static void OnPostprocessBuild(BuildTarget buildTarget, string pathToBuiltProject)
    {        // Stop processing if build target is not iOS
        if (buildTarget != BuildTarget.iOS)
            return;        // Initialize PBXProject
        string projectPath = PBXProject.GetPBXProjectPath(pathToBuiltProject);
        PBXProject pbxProject = new PBXProject();
        pbxProject.ReadFromFile(projectPath);        // Get main target GUID
        string mainTargetGuid = pbxProject.GetUnityMainTargetGuid();        // Get the file GUID
        string filePath = "Path/To/ExampleFile.txt";
        string fileGuid = pbxProject.FindFileGuidByProjectPath(filePath);        // Remove 'exampleTag' asset tag from the specified
        pbxProject.RemoveAssetTagForFile(mainTargetGuid, fileGuid, "exampleTag");        // Apply changes to the pbxproj file
        pbxProject.WriteToFile(projectPath);
    }
}
```
