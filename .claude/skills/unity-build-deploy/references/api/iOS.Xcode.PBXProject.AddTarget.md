<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/iOS.Xcode.PBXProject.AddTarget.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| name | The name of the new target. |
| ext | The file extension of the target artifact. **Note**: Adding a leading `.` isn't necessary, but is accepted. |
| type | The type of the target. For example, `com.apple.product-type.app-extension` or `com.apple.product-type.application.watchapp2`. |

### Returns

**string** The GUID of the new target.

### Description

Creates a new native target.

Target-specific build configurations are automatically created for each known build configuration name. Note, that this is a requirement that follows from the structure of Xcode projects, not an implementation detail of this function. The function creates a product file reference in the `Products` project folder which refers to the target artifact built via this target.

```csharp
using UnityEditor;
using System.IO;
using UnityEditor.Callbacks;
using UnityEditor.iOS.Xcode;public class Sample_AddTarget  
{
    [PostProcessBuild]
    public static void OnPostprocessBuild(BuildTarget buildTarget, string pathToBuiltProject)
    {        // Stop processing if build target is not iOS
        if (buildTarget != BuildTarget.iOS)
            return;        // Initialize PBXProject
        string projectPath = PBXProject.GetPBXProjectPath(pathToBuiltProject);
        PBXProject pbxProject = new PBXProject();
        pbxProject.ReadFromFile(projectPath);        // Add a new Target to the project by specifying its name, extension and target type
        // You can later use the returned targetGuid to modify the target
        string targetGuid = pbxProject.AddTarget("exampleTarget", "app", "com.apple.product-type.bundle");        // Apply changes to the pbxproj file
        pbxProject.WriteToFile(projectPath);
    }
}
```
