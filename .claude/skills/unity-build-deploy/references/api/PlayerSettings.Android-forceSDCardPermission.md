<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PlayerSettings.Android-forceSDCardPermission.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Force SD card permission.

```csharp
using UnityEngine;
using UnityEditor;
using UnityEditor.Build;public class ForceSDCardPermissionSample : MonoBehaviour
{
    [MenuItem("Build/ForceSDCardPermission Sample")]
    public static void BuildForceSDCardPermissionSample()
    {
        PlayerSettings.SetScriptingBackend(NamedBuildTarget.Android, ScriptingImplementation.IL2CPP);
        PlayerSettings.Android.targetArchitectures = AndroidArchitecture.ARM64;
        
        //Set forceSDCardPermission to true
        PlayerSettings.Android.forceSDCardPermission = true;
        
        BuildPlayerOptions options = new BuildPlayerOptions();
        options.scenes = new[] { "Assets/Scenes/SampleScene.unity" };
        options.locationPathName = "Build/AndroidBuild.apk";
        options.target = BuildTarget.Android;
        options.targetGroup = BuildTargetGroup.Android;
        BuildPipeline.BuildPlayer(options);
    }
}
```
