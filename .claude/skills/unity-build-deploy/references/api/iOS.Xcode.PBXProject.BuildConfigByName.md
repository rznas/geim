<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/iOS.Xcode.PBXProject.BuildConfigByName.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| targetGuid | The GUID of the target, such as the one returned by TargetGuidByName. |
| name | The name of the build configuration. |

### Returns

**string** The GUID of the build configuration or null if it doesn't exist.

### Description

Returns the GUID of build configuration with the given name for the specific target.

Returns Null if such configuration does not exist.

```csharp
using UnityEditor;
using System.IO;
using UnityEditor.Callbacks;
using UnityEditor.iOS.Xcode;public class Sample_BuildConfigByName  
{
    [PostProcessBuild]
    public static void OnPostprocessBuild(BuildTarget buildTarget, string pathToBuiltProject)
    {        // Stop processing if build target is not iOS
        if (buildTarget != BuildTarget.iOS)
            return;        // Initialize PBXProject
        string projectPath = PBXProject.GetPBXProjectPath(pathToBuiltProject);
        PBXProject pbxProject = new PBXProject();
        pbxProject.ReadFromFile(projectPath);        // Get main target GUID
        string mainTargetGuid = pbxProject.GetUnityMainTargetGuid();        // Get the GUID of the `Debug` config so you can use it to change config-specific settings
        string configGuid = pbxProject.BuildConfigByName(mainTargetGuid, "Debug");        // For example, add a Build Property
        pbxProject.AddBuildPropertyForConfig(configGuid, "exampleProperty", "exampleValue");        // Apply changes to the pbxproj file
        pbxProject.WriteToFile(projectPath);
    }
}
```
