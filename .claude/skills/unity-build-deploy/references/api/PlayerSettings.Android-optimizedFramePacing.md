<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PlayerSettings.Android-optimizedFramePacing.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Enable optimized frame pacing.

Enable this option to allow Unity to evenly distribute frames for less variance in framerate, creating a smoother gameplay.

```csharp
using UnityEngine;
using UnityEditor;
using UnityEditor.Build;public class FramePacingExample : MonoBehaviour
{
    [MenuItem("Build/Android Frame Pacing Example")]
    public static void FramePacing()
    {
        PlayerSettings.SetScriptingBackend(NamedBuildTarget.Android, ScriptingImplementation.IL2CPP);
        PlayerSettings.Android.targetArchitectures = AndroidArchitecture.ARM64;        PlayerSettings.Android.optimizedFramePacing = true;        BuildPlayerOptions options = new BuildPlayerOptions();
        options.scenes = new[] { "Assets/Scenes/SampleScene.unity" };
        options.locationPathName = "Builds/AndroidBuild.apk";
        options.target = BuildTarget.Android;
        options.targetGroup = BuildTargetGroup.Android;        BuildPipeline.BuildPlayer(options);
    }
}
```
