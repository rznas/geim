<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/iOS.Xcode.PBXProject.GetUnityFrameworkTargetGuid.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**string** The GUID for the framework target.

### Description

Returns the GUID of the framework target in Unity project.

Returns the GUID of the framework target. This target includes source code, plugins, dependent frameworks, and source compile/link build options. You can retrieve the other targets using GetUnityMainTargetGuid and TargetGuidByName.

```csharp
using UnityEditor;
using UnityEditor.Callbacks;
using UnityEditor.iOS.Xcode;public class Sample_GetUnityFrameworkTargetGuid  
{
    [PostProcessBuild]
    public static void OnPostprocessBuild(BuildTarget buildTarget, string pathToBuiltProject)
    {        // Stop processing if build target is not iOS
        if (buildTarget != BuildTarget.iOS)
            return;        // Initialize PBXProject
        string projectPath = PBXProject.GetPBXProjectPath(pathToBuiltProject);        PBXProject pbxProject = new PBXProject();
        pbxProject.ReadFromFile(projectPath);        // Get the GUID for the UnityFramework target
        string unityFrameworkGuid = pbxProject.GetUnityFrameworkTargetGuid();        // The unityFrameworkGuid can be later used to specify UnityFramework as the target when manipulating the pbxproj file
        pbxProject.AddFrameworkToProject(unityFrameworkGuid, "Security.framework", false);
        pbxProject.SetBuildProperty(unityFrameworkGuid, "ENABLE_BITCODE", "NO");        // Apply changes to the pbxproj file
        pbxProject.WriteToFile(projectPath);
    }
}
```
