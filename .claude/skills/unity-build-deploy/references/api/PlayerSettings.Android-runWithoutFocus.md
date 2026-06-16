<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PlayerSettings.Android-runWithoutFocus.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Allows your application to continue to run even when it’s not in focus.

When enabled, the application keeps running even when not in focus and remains visible on devices that support split-screen mode. When disabled, the application pauses but remains visible.

```csharp
using UnityEngine;
using UnityEditor;
using UnityEditor.Build;public class RunWithoutFocusSample : MonoBehaviour
{
    [MenuItem("Build/RunWithoutFocus Sample")]
    public static void BuildRunWithoutFocusSample()
    {
        PlayerSettings.SetScriptingBackend(NamedBuildTarget.Android, ScriptingImplementation.IL2CPP);
        PlayerSettings.Android.targetArchitectures = AndroidArchitecture.ARM64;        //Set runWithoutFocus to true
        PlayerSettings.Android.runWithoutFocus = true;        BuildPlayerOptions options = new BuildPlayerOptions();
        options.scenes = new[] { "Assets/Scenes/SampleScene.unity" };
        options.locationPathName = "Build/AndroidBuild.apk";
        options.target = BuildTarget.Android;
        options.targetGroup = BuildTargetGroup.Android;
        BuildPipeline.BuildPlayer(options);
    }
}
```
