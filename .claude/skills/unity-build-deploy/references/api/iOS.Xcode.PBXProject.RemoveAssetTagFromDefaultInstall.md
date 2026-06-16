<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/iOS.Xcode.PBXProject.RemoveAssetTagFromDefaultInstall.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| targetGuid | The GUID of the target, such as the one returned by TargetGuidByName. |
| tag | The name of the asset tag. |

### Description

Removes the asset tag from the list of tags to download during initial installation.

The function does nothing if the tag isn't already configured for downloading during initial installation.

```csharp
using UnityEditor;
using System.IO;
using UnityEditor.Callbacks;
using UnityEditor.iOS.Xcode;public class Sample_RemoveAssetTagFromDefaultInstall  
{
    [PostProcessBuild]
    public static void OnPostprocessBuild(BuildTarget buildTarget, string pathToBuiltProject)
    {        // Stop processing if build target is not iOS
        if (buildTarget != BuildTarget.iOS)
            return;        // Initialize PBXProject
        string projectPath = PBXProject.GetPBXProjectPath(pathToBuiltProject);
        PBXProject pbxProject = new PBXProject();
        pbxProject.ReadFromFile(projectPath);        // Get GUID for Main target
        string mainTargetGuid = pbxProject.GetUnityMainTargetGuid();
                
        // Remove the Asset Tag from list of tags to be downloaded during initial installation
        pbxProject.RemoveAssetTagFromDefaultInstall(mainTargetGuid, "exampleTag");        // Apply changes to the pbxproj file
        pbxProject.WriteToFile(projectPath);
    }
}
```
