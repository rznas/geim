<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/iOS.Xcode.PBXProject.GetUnityMainTargetGuid.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**string** The GUID for the main target.

### Description

Returns the GUID of the main target in Unity project.

Returns the GUID of the main target. This target includes everything except source code, plugins, dependent frameworks, and source compile and link build options. To retreive the full framework, use GetUnityFrameworkTargetGuid.

```csharp
using UnityEditor;
using System.IO;
using UnityEditor.Callbacks;
using UnityEditor.iOS.Xcode;public class Sample_GetUnityMainTargetGuid  
{
    [PostProcessBuild]
    public static void OnPostprocessBuild(BuildTarget buildTarget, string pathToBuiltProject)
    {        // Stop processing if build target is not iOS
        if (buildTarget != BuildTarget.iOS)
            return;        // Initialize PBXProject
        string projectPath = PBXProject.GetPBXProjectPath(pathToBuiltProject);
        PBXProject pbxProject = new PBXProject();
        pbxProject.ReadFromFile(projectPath);        // Get the GUID for the main target
        string mainTargetGuid = pbxProject.GetUnityMainTargetGuid();        // The mainTargetGuid can be later used to specify where to apply changes when manipulating the pbxproj file
        pbxProject.AddFrameworkToProject(mainTargetGuid, "Security.framework", false);
        pbxProject.SetBuildProperty(mainTargetGuid, "ENABLE_BITCODE", "NO");        // Apply changes to the pbxproj file
        pbxProject.WriteToFile(projectPath);
    }}
```
