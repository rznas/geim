<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/iOS.Xcode.PBXProject.GetTargetProductFileRef.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| targetGuid | The GUID of the target, such as the one returned by TargetGuidByName. |

### Returns

**string** The file reference of the artifact created by building target.

### Description

Returns the file reference of the artifact created by building target.

```csharp
using UnityEngine;
using UnityEditor;
using System.IO;
using UnityEditor.Callbacks;
using UnityEditor.iOS.Xcode;public class Sample_GetTargetProductFileRef  
{
    [PostProcessBuild]
    public static void OnPostprocessBuild(BuildTarget buildTarget, string pathToBuiltProject)
    {        // Stop processing if build target is not iOS
        if (buildTarget != BuildTarget.iOS)
            return;        // Initialize PBXProject
        string projectPath = PBXProject.GetPBXProjectPath(pathToBuiltProject);
        PBXProject pbxProject = new PBXProject();
        pbxProject.ReadFromFile(projectPath);        // Get the target GUID
        string targetGuid = pbxProject.GetUnityMainTargetGuid();        // Get the "Product File Ref" GUID 
        string productFileRef = pbxProject.GetTargetProductFileRef(targetGuid);        // Log the "Product File Ref" GUID for debugging
        Debug.Log("'Product File Ref' GUID: " + productFileRef);
    }
}
```
