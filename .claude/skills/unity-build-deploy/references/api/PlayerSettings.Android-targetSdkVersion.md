<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PlayerSettings.Android-targetSdkVersion.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The target API level of your application.

This value must be higher than or equal to minSdkVersion.

```csharp
using UnityEngine;
using UnityEditor;
using UnityEditor.Build;public class TargetSdkVersionSample : MonoBehaviour
{
    [MenuItem("Build/TargetSdkVersion Sample")]
    public static void BuildTargetSdkVersionSample()
    {
        PlayerSettings.SetScriptingBackend(NamedBuildTarget.Android, ScriptingImplementation.IL2CPP);
        PlayerSettings.Android.targetArchitectures = AndroidArchitecture.ARM64;        //Set targetSdkversion
        PlayerSettings.Android.targetSdkVersion = AndroidSdkVersions.AndroidApiLevel30;        BuildPlayerOptions options = new BuildPlayerOptions();
        options.scenes = new[] { "Assets/Scenes/SampleScene.unity" };
        options.locationPathName = "Build/AndroidBuild.apk";
        options.target = BuildTarget.Android;
        options.targetGroup = BuildTargetGroup.Android;
        BuildPipeline.BuildPlayer(options);
    }
}
```
