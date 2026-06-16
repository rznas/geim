<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/iOS.Xcode.PBXProject.WriteToString.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**string** The project contents converted to string.

### Description

Writes the contents of the project to string.

```csharp
using UnityEditor;
using System.IO;
using UnityEditor.Callbacks;
using UnityEditor.iOS.Xcode;public class Sample_WriteToString  
{
    [PostProcessBuild]
    public static void OnPostprocessBuild(BuildTarget buildTarget, string pathToBuiltProject)
    {        // Stop processing if build target is not iOS
        if (buildTarget != BuildTarget.iOS)
            return;        // Initialize PBXProject
        string projectPath = PBXProject.GetPBXProjectPath(pathToBuiltProject);
        
        // Read the project.pbxproj file into a string
        string pbxProjectContent = File.ReadAllText(projectPath);        // Create a PBXProject object and read from the string
        PBXProject pbxProject = new PBXProject();
        pbxProject.ReadFromString(pbxProjectContent);        // Get target GUID you want to make modifications on
        string mainTargetGuid = pbxProject.GetUnityMainTargetGuid();        // Modify the project, such as adding a build property
        pbxProject.AddBuildProperty(mainTargetGuid, "exampleProperty", "exampleValue");  
        
        // Convert the modified project back to a string
        string updatedPbxProjectContent = pbxProject.WriteToString();        // Save the updated project string back to the project.pbxproj file
        File.WriteAllText(projectPath, updatedPbxProjectContent);
    }
}
```
