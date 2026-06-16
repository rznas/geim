<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PlayerSettings.Android-minimumWindowHeight.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The minimum vertical size of the Android Player window in pixels.

```csharp
using UnityEngine;
using UnityEditor;
using UnityEditor.Build;public class MinimumWindowHeightSample : MonoBehaviour
{
    [MenuItem("Build/Minimum Window Height Sample")]
    public static void BuildWindowHeightSample()
    {
        PlayerSettings.SetScriptingBackend(NamedBuildTarget.Android, ScriptingImplementation.IL2CPP);
        PlayerSettings.Android.targetArchitectures = AndroidArchitecture.ARM64;        //Set minimum window Height to 300
        PlayerSettings.Android.minimumWindowHeight = 300;        BuildPlayerOptions options = new BuildPlayerOptions();
        options.scenes = new[] { "Assets/Scenes/SampleScene.unity" };
        options.locationPathName = "Build/AndroidBuild.apk";
        options.target = BuildTarget.Android;
        options.targetGroup = BuildTargetGroup.Android;
        BuildPipeline.BuildPlayer(options);
    }
}
```
