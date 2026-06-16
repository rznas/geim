<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PlayerSettings.Android-fullscreenMode.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The display mode for Android Player builds of your application.

Android supports `FullScreenMode.Windowed` and `FullScreenMode.FullScreenWindow`. For more information, refer to FullScreenMode

```csharp
using UnityEngine;
using UnityEditor;
using UnityEditor.Build;public class FullscreenModeSample : MonoBehaviour
{
    [MenuItem("Build/fullscreenMode Sample")]
    public static void BuildFullscreenModeSample()
    {
        PlayerSettings.SetScriptingBackend(NamedBuildTarget.Android, ScriptingImplementation.IL2CPP);
        PlayerSettings.Android.targetArchitectures = AndroidArchitecture.ARM64;
        
        //Set full screen mode to windowed
        PlayerSettings.Android.fullscreenMode = FullScreenMode.Windowed;
        
        BuildPlayerOptions options = new BuildPlayerOptions();
        options.scenes = new[] { "Assets/Scenes/SampleScene.unity" };
        options.locationPathName = "Build/AndroidBuild.apk";
        options.target = BuildTarget.Android;
        options.targetGroup = BuildTargetGroup.Android;
        BuildPipeline.BuildPlayer(options);
    }
}
```
