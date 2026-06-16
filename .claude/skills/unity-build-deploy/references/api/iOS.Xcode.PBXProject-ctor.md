<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/iOS.Xcode.PBXProject-ctor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Creates a new instance of PBXProject class.

```csharp
using System.Collections;
using System.Collections.Generic;
using System.IO;
using UnityEngine;
using UnityEditor;
using UnityEditor.Callbacks;
using UnityEditor.iOS.Xcode;public class Sample_PBXProject  
{
    [PostProcessBuild]
    public static void OnPostprocessBuild(BuildTarget buildTarget, string pathToBuiltProject)
    {
        // Stop processing if build target is not iOS
        if (buildTarget != BuildTarget.iOS)
            return;        // Initialize PBXProject
        string projectPath = PBXProject.GetPBXProjectPath(pathToBuiltProject);
        PBXProject pbxProject = new PBXProject();
        pbxProject.ReadFromFile(projectPath);        // Perform any modifications you want to the PBXProject        // Get the target GUID
        string mainTargetGuid = pbxProject.GetUnityMainTargetGuid();        // Add a new build configuration and add a new property to it
        string configName = "exampleConfig";
        pbxProject.AddBuildConfig(configName);
        string configGuid = pbxProject.BuildConfigByName(mainTargetGuid, configName);
        pbxProject.AddBuildPropertyForConfig(configGuid, "exampleProperty", "exampleValue");        // Add a new file to project and to build list
        string filePath = Path.Combine(Application.dataPath, "Resources/InputFile.txt");
        string fileGuid = pbxProject.AddFile(filePath, "Resources/InputFile.txt");
        pbxProject.AddFileToBuild(mainTargetGuid, fileGuid);        // Add frameworks to the project
        pbxProject.AddFrameworkToProject(mainTargetGuid, "CoreBluetooth.framework", false);
        pbxProject.AddFrameworkToProject(mainTargetGuid, "MapKit.framework", true);        // Apply changes to the pbxproj file
        pbxProject.WriteToFile(projectPath);
    }}
```
