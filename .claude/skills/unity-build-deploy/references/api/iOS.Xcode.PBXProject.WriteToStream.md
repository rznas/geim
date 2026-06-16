<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/iOS.Xcode.PBXProject.WriteToStream.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| sw | Text writer to write to. |

### Description

Writes the project contents to the specified text writer.

```csharp
using UnityEditor;
using System.IO;
using UnityEditor.Callbacks;
using UnityEditor.iOS.Xcode;public class Sample_WriteToStream  
{
    [PostProcessBuild]
    public static void OnPostprocessBuild(BuildTarget buildTarget, string pathToBuiltProject)
    {        // Stop processing if build target is not iOS
        if (buildTarget != BuildTarget.iOS)
            return;        // Initialize PBXProject
        string projectPath = PBXProject.GetPBXProjectPath(pathToBuiltProject);        PBXProject pbxProject = new PBXProject();        // Initialize PBXProject by reading project info from stream
        using (StreamReader sr = new StreamReader(projectPath))
        {
            pbxProject.ReadFromStream(sr);
        }
        
        // Get target GUID you want to make modifications on
        string mainTargetGuid = pbxProject.GetUnityMainTargetGuid();        // Modify the project, such as adding a build property
        pbxProject.AddBuildProperty(mainTargetGuid, "exampleProperty", "exampleValue");                   // Apply changes to the pbxproj file using WriteToStream
        using (StreamWriter sw = new StreamWriter(projectPath))
        {
            pbxProject.WriteToStream(sw);
        }
    }
}
```
