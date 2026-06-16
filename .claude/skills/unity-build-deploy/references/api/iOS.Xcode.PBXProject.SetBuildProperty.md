<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/iOS.Xcode.PBXProject.SetBuildProperty.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| targetGuid | The GUID of the target, such as the one returned by GetUnityFrameworkTargetGuid. |
| targetGuids | The GUIDs of the targets, such as the one returned by GetUnityFrameworkTargetGuid. |
| name | The name of the build property. For more information on build properties, refer to [Build settings reference (Apple Developer)](https://developer.apple.com/documentation/xcode/build-settings-reference). |
| value | The value of the build property. |

### Description

Sets a build property to the given value in all build configurations for the specified target(s).

Values for names `LIBRARY_SEARCH_PATHS` and `FRAMEWORK_SEARCH_PATHS` are quoted if they contain spaces.

```csharp
using UnityEditor;
using System.IO;
using UnityEditor.Callbacks;
using UnityEditor.iOS.Xcode;public class Sample_SetBuildProperty  
{
    [PostProcessBuild]
    public static void OnPostprocessBuild(BuildTarget buildTarget, string pathToBuiltProject)
    {        // Stop processing if build target is not iOS
        if (buildTarget != BuildTarget.iOS)
            return;        // Initialize PBXProject
        string projectPath = PBXProject.GetPBXProjectPath(pathToBuiltProject);
        PBXProject pbxProject = new PBXProject();
        pbxProject.ReadFromFile(projectPath);        // Get the GUID that you want to set a build property on
        string unityFrameworkTargetGuid = pbxProject.GetUnityFrameworkTargetGuid();        // Set "ENABLE_BITCODE" to "NO" for UnityFramework target
        pbxProject.SetBuildProperty(unityFrameworkTargetGuid, "ENABLE_BITCODE", "NO");        // Apply changes to the pbxproj file
        pbxProject.WriteToFile(projectPath);
    }
}
```
