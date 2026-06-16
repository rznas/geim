<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/iOS.Xcode.Extensions.PBXProjectExtensions.AddAppExtension.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| proj | The implicit `this` parameter for the extension method. |
| mainTargetGuid | The GUID of the main target to link the app to. |
| name | The name of the app extension. |
| bundleId | The bundle ID of the app extension. The bundle ID must be prefixed with the parent app bundle ID. |
| infoPlistPath | Path to the app extension Info.plist document. |

### Returns

**string** The GUID of the new target.

### Description

Creates an app extension.

```csharp
using UnityEditor;
using UnityEngine;
using UnityEditor.iOS.Xcode;
using UnityEditor.iOS.Xcode.Extensions;
using System.IO;
using UnityEditor.Callbacks;public class ScriptBatch : MonoBehaviour
{
    [PostProcessBuild]
    private static void PostProcessBuild_iOS(BuildTarget target, string buildPath)
    {	    Directory.CreateDirectory(buildPath + "/appext");        File.Copy("Assets/extension/TodayViewController.h", buildPath + "/appext/TodayViewController.h");
        File.Copy("Assets/extension/TodayViewController.m", buildPath + "/appext/TodayViewController.m");        PBXProject proj = new PBXProject();
        string projPath = PBXProject.GetPBXProjectPath(buildPath);
        proj.ReadFromFile(projPath);        string targetGuid = proj.GetUnityFrameworkTargetGuid();        string newTarget = proj.AddAppExtension(targetGuid, "appext", "com.unity3d.product.appext", "appext/Info.plist");
        proj.AddFileToBuild(newTarget, proj.AddFile(buildPath + "/appext/TodayViewController.h", "appext/TodayViewController.h"));
        proj.AddFileToBuild(newTarget, proj.AddFile(buildPath + "/appext/TodayViewController.m", "appext/TodayViewController.m"));
        proj.AddFrameworkToProject(newTarget, "NotificationCenter.framework", true);
        proj.WriteToFile(projPath);
    }
}
```
