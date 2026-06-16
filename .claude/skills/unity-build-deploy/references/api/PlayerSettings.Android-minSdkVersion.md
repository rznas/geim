<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PlayerSettings.Android-minSdkVersion.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The minimum API level required for your application to run.

```csharp
using UnityEngine;
using UnityEditor;
using UnityEditor.Build;public class MinSdkVersionSample : MonoBehaviour
{
    [MenuItem("Build/MinSdkVersion Sample")]
    public static void BuildMinSdkVersionSample()
    {
        PlayerSettings.SetScriptingBackend(NamedBuildTarget.Android, ScriptingImplementation.IL2CPP);
        PlayerSettings.Android.targetArchitectures = AndroidArchitecture.ARM64;        //Set minimum SDK version
        PlayerSettings.Android.minSdkVersion = AndroidSdkVersions.AndroidApiLevel30;        BuildPlayerOptions options = new BuildPlayerOptions();
        options.scenes = new[] { "Assets/Scenes/SampleScene.unity" };
        options.locationPathName = "Build/AndroidBuild.apk";
        options.target = BuildTarget.Android;
        options.targetGroup = BuildTargetGroup.Android;
        BuildPipeline.BuildPlayer(options);
    }
}
```
