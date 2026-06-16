<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/iOS.Xcode.PBXProject.AddBuildProperty.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| targetGuid | The GUID of the target, such as the one returned by GetUnityFrameworkTargetGuid. |
| name | The name of the build property. |
| value | The value of the build property. |
| targetGuids | An array of target GUIDs. |

### Description

Adds a value to the build property list in all the build configurations for the specified target(s).

Duplicate build properties are ignored. Values for names `LIBRARY_SEARCH_PATHS` and `FRAMEWORK_SEARCH_PATHS` are quoted if they contain spaces.

```csharp
using UnityEngine;
using UnityEditor;
using UnityEditor.iOS.Xcode;
using UnityEditor.Callbacks;
using System.IO;public class Sample_AddBuildProperty  
{
    [PostProcessBuild]
    public static void OnPostprocessBuild(BuildTarget buildTarget, string pathToBuiltProject)
    {        // Stop processing if build target is not iOS
        if (buildTarget != BuildTarget.iOS)
            return;        // Initialize PBXProject
        string projectPath = PBXProject.GetPBXProjectPath(pathToBuiltProject);
        PBXProject pbxProject = new PBXProject();
        pbxProject.ReadFromFile(projectPath);        // Get GUID for main target
        string mainTargetGuid = pbxProject.GetUnityMainTargetGuid();        // Add Build Property to all configs in the main target
        pbxProject.AddBuildProperty(mainTargetGuid, "exampleProperty", "exampleValue");        // Apply changes to the pbxproj file
        pbxProject.WriteToFile(projectPath);
    }
}
```
