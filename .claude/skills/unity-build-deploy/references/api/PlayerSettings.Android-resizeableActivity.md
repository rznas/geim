<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PlayerSettings.Android-resizeableActivity.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Indicates whether your Android application is resizable.

By default the Android application is resizable. Disable this option to make the application non-resizable.

**Note:** If you enable this option, your application will continue to run when it loses focus but is visible on screen. If the application is minimized or no longer visible the Android Player will pause.

```csharp
using UnityEngine;
using UnityEditor;
using UnityEditor.Build;public class ResizeableActivitySample : MonoBehaviour
{
    [MenuItem("Build/ResizeableActivity Sample")]
    public static void BuildResizeableActivitySample()
    {
        PlayerSettings.SetScriptingBackend(NamedBuildTarget.Android, ScriptingImplementation.IL2CPP);
        PlayerSettings.Android.targetArchitectures = AndroidArchitecture.ARM64;        //Set resizeableActivity to true
        PlayerSettings.Android.resizeableActivity = true;        BuildPlayerOptions options = new BuildPlayerOptions();
        options.scenes = new[] { "Assets/Scenes/SampleScene.unity" };
        options.locationPathName = "Build/AndroidBuild.apk";
        options.target = BuildTarget.Android;
        options.targetGroup = BuildTargetGroup.Android;
        BuildPipeline.BuildPlayer(options);
    }
}
```
