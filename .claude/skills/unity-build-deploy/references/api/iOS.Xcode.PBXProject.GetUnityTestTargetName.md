<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/iOS.Xcode.PBXProject.GetUnityTestTargetName.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**string** The default test target name.

### Description

Returns the default test target name.

Use the returned target name to retrieve the GUID of the target via TargetGuidByName. 

**Note**: This function can only be used in Unity-generated projects.

```csharp
using UnityEditor;
using System.IO;
using UnityEditor.Callbacks;
using UnityEditor.iOS.Xcode;public class Sample_GetUnityTestTargetName  
{
    [PostProcessBuild]
    public static void OnPostprocessBuild(BuildTarget buildTarget, string pathToBuiltProject)
    {        // Stop processing if build target is not iOS
        if (buildTarget != BuildTarget.iOS)
            return;        // Initialize PBXProject
        string projectPath = PBXProject.GetPBXProjectPath(pathToBuiltProject);
        PBXProject pbxProject = new PBXProject();
        pbxProject.ReadFromFile(projectPath);        // Get the Test target name
        string testTargetName = PBXProject.GetUnityTestTargetName();        // Use the name to get Test target GUID
        string testTargetGuid = pbxProject.TargetGuidByName(testTargetName);        // The test target GUID can be later used manipulating the pbxproj file
        pbxProject.AddFrameworkToProject(testTargetGuid, "Security.framework", false);
        pbxProject.SetBuildProperty(testTargetGuid, "ENABLE_BITCODE", "NO");
        
        // Apply changes to the pbxproj file
        pbxProject.WriteToFile(projectPath);
    }
}
```
