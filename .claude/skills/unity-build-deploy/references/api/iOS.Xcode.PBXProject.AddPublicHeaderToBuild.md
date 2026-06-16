<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/iOS.Xcode.PBXProject.AddPublicHeaderToBuild.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| targetGuid | The GUID of the target, such as the one returned by TargetGuidByName. |
| fileGuid | The file GUID returned by AddFile or AddFolderReference. |

### Description

Configures a file for building for the given native target as a public header.

In projects containing multiple native targets, you can configure a file to build in all, some, or, none of the targets. The file reference is added to appropriate build section.

```csharp
using UnityEditor;
using System.IO;
using UnityEditor.Callbacks;
using UnityEditor.iOS.Xcode;public class Sample_AddPublicHeaderToBuild  
{
    [PostProcessBuild]
    public static void OnPostprocessBuild(BuildTarget buildTarget, string pathToBuiltProject)
    {        // Stop processing if build target is not iOS
        if (buildTarget != BuildTarget.iOS)
            return;        // Initialize PBXProject
        string projectPath = PBXProject.GetPBXProjectPath(pathToBuiltProject);
        PBXProject pbxProject = new PBXProject();
        pbxProject.ReadFromFile(projectPath);        // Get the GUID of the target you want to add the Headers Build Phase to
        string mainTargetGuid = pbxProject.GetUnityMainTargetGuid();        // Add Headers Build Phase
        pbxProject.AddHeadersBuildPhase(mainTargetGuid);        // Add the header file to the project and add it to Public Headers Build Phase
        string headerGuid = pbxProject.AddFile("exampleHeader.h", "Headers/exampleHeader.h", PBXSourceTree.Source);
        pbxProject.AddPublicHeaderToBuild(mainTargetGuid, headerGuid);        // Apply changes to the pbxproj file
        pbxProject.WriteToFile(projectPath);
    }
}
```
