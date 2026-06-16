<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/iOS.Xcode.PBXProject.BuildConfigNames.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**IEnumerable<string>** An array of build config names.

### Description

Returns the names of the build configurations available in the project.

The number and names of the build configurations is a project-wide setting. Each target has the same number of build configurations and the names of these build configurations is the same. In other words, BuildConfigByName will succeed for all targets in the project and all build configuration names returned by this function.

```csharp
using UnityEngine;
using UnityEditor;
using System.IO;
using UnityEditor.Callbacks;
using UnityEditor.iOS.Xcode;public class Sample_BuildConfigNames  
{
    [PostProcessBuild]
    public static void OnPostprocessBuild(BuildTarget buildTarget, string pathToBuiltProject)
    {        // Stop processing if build target is not iOS
        if (buildTarget != BuildTarget.iOS)
            return;        // Initialize PBXProject
        string projectPath = PBXProject.GetPBXProjectPath(pathToBuiltProject);
        PBXProject pbxProject = new PBXProject();
        pbxProject.ReadFromFile(projectPath);        // Retrieve Build Config names for the Xcode project
        var configs = pbxProject.BuildConfigNames();        foreach (string configName in configs)
        {
            //Do something with the congfig names
            Debug.Log("Config: " + configName);
        }        // Apply changes to the pbxproj file
        pbxProject.WriteToFile(projectPath);
    }
}
```
