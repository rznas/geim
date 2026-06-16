<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/iOS.Xcode.PBXProject.WriteToFile.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| path | Path to write the project contents to. |

### Description

Writes the project contents to the specified file.

```csharp
using UnityEditor;
using System.IO;
using UnityEditor.Callbacks;
using UnityEditor.iOS.Xcode;public class Sample_WriteToFile  
{
    [PostProcessBuild]
    public static void OnPostprocessBuild(BuildTarget buildTarget, string pathToBuiltProject)
    {        // Stop processing if build target is not iOS
        if (buildTarget != BuildTarget.iOS)
            return;        // Initialize PBXProject by specifying the project path
        string projectPath = PBXProject.GetPBXProjectPath(pathToBuiltProject);
        PBXProject pbxProject = new PBXProject();        // Read project information from the project file
        pbxProject.ReadFromFile(projectPath);        // Get the target GUID you want to make modifications on
        string mainTargetGuid = pbxProject.GetUnityMainTargetGuid();        // Modify the project, such as adding a build propety
        pbxProject.AddBuildProperty(mainTargetGuid, "exampleProperty", "exampleValue");
        
        // Apply changes to the pbxproj file
        pbxProject.WriteToFile(projectPath);
    }
}
```
