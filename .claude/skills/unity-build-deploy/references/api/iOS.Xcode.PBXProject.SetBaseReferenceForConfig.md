<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/iOS.Xcode.PBXProject.SetBaseReferenceForConfig.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| configGuid | The GUID of the build configuration as returned by BuildConfigByName. |
| baseReference | The GUID of the configuration file to be used as the base reference. |

### Description

Sets the base configuration reference for the specified build configuration.

**Note**: If the baseReference parameter is null, the base reference is removed.

```csharp
using UnityEngine;
using UnityEditor;
using System.IO;
using UnityEditor.Callbacks;
using UnityEditor.iOS.Xcode;public class Sample_SetBaseReferenceForConfig  
{
    [PostProcessBuild]
    public static void OnPostprocessBuild(BuildTarget buildTarget, string pathToBuiltProject)
    {        // Stop processing if build target is not iOS
        if (buildTarget != BuildTarget.iOS)
            return;        // Initialize PBXProject
        string projectPath = PBXProject.GetPBXProjectPath(pathToBuiltProject);
        PBXProject pbxProject = new PBXProject();
        pbxProject.ReadFromFile(projectPath);
        
        // Get the target GUID
        string mainTargetGuid = pbxProject.GetUnityMainTargetGuid();        // Retrieve the configuration name (this can be "Debug", "Release", or any custom configuration name)
        string configName = "Release";        // Get the "Release" build configuration GUID 
        string configGuid = pbxProject.BuildConfigByName(mainTargetGuid, configName);
        
        // Add the file you will be using as base reference for the "Release" configuration
        // This example expects you having a "release.xcconfig" file in your project's "Assets/Resources/" directory
        string filePath = Path.Combine(Application.dataPath, "Resources/release.xcconfig");
        string file = pbxProject.AddFile(filePath, "Configs/release.xcconfig", PBXSourceTree.Source);
        
        // Set the base configuration file using SetBaseReferenceForConfig
        pbxProject.SetBaseReferenceForConfig(configGuid, file);
        
        // Apply changes to the pbxproj file
        pbxProject.WriteToFile(projectPath);
    }
}
```
