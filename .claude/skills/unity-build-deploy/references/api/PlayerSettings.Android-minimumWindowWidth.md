<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PlayerSettings.Android-minimumWindowWidth.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The minimum horizontal size of the Android Player window in pixels.

```csharp
using UnityEngine;
using UnityEditor;
using UnityEditor.Build;public class MinimumWindowWidthSample : MonoBehaviour
{
    [MenuItem("Build/Minimum Window Width Sample")]
    public static void BuildMinimumWindowWidthSample()
    {
        PlayerSettings.SetScriptingBackend(NamedBuildTarget.Android, ScriptingImplementation.IL2CPP);
        PlayerSettings.Android.targetArchitectures = AndroidArchitecture.ARM64;        //Set minimum window width to 300
        PlayerSettings.Android.minimumWindowWidth = 300;        BuildPlayerOptions options = new BuildPlayerOptions();
        options.scenes = new[] { "Assets/Scenes/SampleScene.unity" };
        options.locationPathName = "Build/AndroidBuild.apk";
        options.target = BuildTarget.Android;
        options.targetGroup = BuildTargetGroup.Android;
        BuildPipeline.BuildPlayer(options);
    }
}
```
