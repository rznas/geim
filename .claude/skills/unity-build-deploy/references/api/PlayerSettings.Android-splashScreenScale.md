<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PlayerSettings.Android-splashScreenScale.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Android splash screen scale mode.

```csharp
using UnityEngine;
using UnityEditor;
using UnityEditor.Build;public class SplashScreenScaleSample : MonoBehaviour
{
    [MenuItem("Build/Splash Screen Scale Sample")]
    public static void BuildSplashScreenScaleSample()
    {
        PlayerSettings.SetScriptingBackend(NamedBuildTarget.Android, ScriptingImplementation.IL2CPP);
        PlayerSettings.Android.targetArchitectures = AndroidArchitecture.ARM64;        //Set splashScreenScale to ScaleToFill
        PlayerSettings.Android.splashScreenScale = AndroidSplashScreenScale.ScaleToFill;        BuildPlayerOptions options = new BuildPlayerOptions();
        options.scenes = new[] { "Assets/Scenes/SampleScene.unity" };
        options.locationPathName = "Build/AndroidBuild.apk";
        options.target = BuildTarget.Android;
        options.targetGroup = BuildTargetGroup.Android;
        BuildPipeline.BuildPlayer(options);
    }
}
```
