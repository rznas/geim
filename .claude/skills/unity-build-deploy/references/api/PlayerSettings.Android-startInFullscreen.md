<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PlayerSettings.Android-startInFullscreen.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Start in fullscreen mode.

If not set, Android displays the navigation bar while your game loads.

```csharp
using UnityEngine;
using UnityEditor;
using UnityEditor.Build;public class StartInFullscreenSample : MonoBehaviour
{
    [MenuItem("Build/Start in Fullscreen Sample")]
    public static void BuildStartInFullscreenSample()
    {
        PlayerSettings.SetScriptingBackend(NamedBuildTarget.Android, ScriptingImplementation.IL2CPP);
        PlayerSettings.Android.targetArchitectures = AndroidArchitecture.ARM64;        //Set startInFullScreen to true
        PlayerSettings.Android.startInFullscreen = true;        BuildPlayerOptions options = new BuildPlayerOptions();
        options.scenes = new[] { "Assets/Scenes/SampleScene.unity" };
        options.locationPathName = "Build/AndroidBuild.apk";
        options.target = BuildTarget.Android;
        options.targetGroup = BuildTargetGroup.Android;
        BuildPipeline.BuildPlayer(options);
    }
}
```
