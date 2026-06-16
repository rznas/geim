<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/iOS.Xcode.PBXProject.UpdateBuildPropertyForConfig.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| configGuid | The GUID of the build configuration as returned by BuildConfigByName. |
| configGuids | An array of GUIDs of build configurations. |
| name | The name of the build property. |
| addValues | The values to add to the build property. |
| removeValues | The values to remove from the build property. |

### Description

Adds and removes values from a build property in the given build configuration.

```csharp
using UnityEditor;
using System.IO;
using UnityEditor.Callbacks;
using UnityEditor.iOS.Xcode;public class Sample_UpdateBuildPropertyForConfig  
{
    [PostProcessBuild]
    public static void OnPostprocessBuild(BuildTarget buildTarget, string pathToBuiltProject)
    {        // Stop processing if build target is not iOS
        if (buildTarget != BuildTarget.iOS)
            return;        // Initialize PBXProject
        string projectPath = PBXProject.GetPBXProjectPath(pathToBuiltProject);
        PBXProject pbxProject = new PBXProject();
        pbxProject.ReadFromFile(projectPath);        // Get the target GUID
        string mainTargetGuid = pbxProject.GetUnityMainTargetGuid();        // Get the GUID of the "Debug" config
        string configGuid = pbxProject.BuildConfigByName(mainTargetGuid, "Debug");        // Set up which property you will want to update, what values you want to add, and what values you want to remove
        string propertyName = "ON_DEMAND_RESOURCES_INITIAL_INSTALL_TAGS";
        string[] newTags = new string[] { "newTag1", "newTag2", "newTag3"};
        string[] oldTags = new string[] { "oldTag1", "oldTag2", "oldTag3"};        // Update the property using the UpdateBuildPropery function
        pbxProject.UpdateBuildPropertyForConfig(configGuid, propertyName, newTags, oldTags);
        
        // Apply changes to the pbxproj file
        pbxProject.WriteToFile(projectPath);
    }
}
```
