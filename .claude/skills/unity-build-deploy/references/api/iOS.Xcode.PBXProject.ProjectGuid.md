<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/iOS.Xcode.PBXProject.ProjectGuid.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**string** The GUID of the project.

### Description

Returns the GUID of the project.

The project GUID identifies a project-wide native target which is used to set project-wide properties. This GUID can be passed to any functions that accepts target GUIDs as parameters.

```csharp
using UnityEngine;
using UnityEditor;
using System.IO;
using UnityEditor.Callbacks;
using UnityEditor.iOS.Xcode;public class Sample_ProjectGuid  
{
    [PostProcessBuild]
    public static void OnPostprocessBuild(BuildTarget buildTarget, string pathToBuiltProject)
    {        // Stop processing if build target is not iOS
        if (buildTarget != BuildTarget.iOS)
            return;        // Initialize PBXProject
        string projectPath = PBXProject.GetPBXProjectPath(pathToBuiltProject);
        PBXProject pbxProject = new PBXProject();
        pbxProject.ReadFromFile(projectPath);        // Get the project GUID
        string projectGuid = pbxProject.ProjectGuid();        // Log the project GUID for debugging
        Debug.Log("Project GUID: " + projectGuid);
        
        // Use the GUID to make project-wide changes such as adding properties
        pbxProject.AddBuildProperty(projectGuid, "exampleProperty", "exampleValue");        // Apply changes to the pbxproj file if there were any
        pbxProject.WriteToFile(projectPath);
    }
}
```
