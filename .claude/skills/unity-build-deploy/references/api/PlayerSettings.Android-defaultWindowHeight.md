<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PlayerSettings.Android-defaultWindowHeight.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The default vertical size of the Android Player window in pixels.

On Android phones and tablets that support multiple windows, this controls the height of the window when in the popup window mode.

```csharp
using UnityEngine;
using UnityEditor;
using UnityEditor.Build;public class DefaultWindowHeightSample : MonoBehaviour
{
    [MenuItem("Build/Default Window Height Sample")]
    public static void BuildWindowHeightSample()
    {
        PlayerSettings.SetScriptingBackend(NamedBuildTarget.Android, ScriptingImplementation.IL2CPP);
        PlayerSettings.Android.targetArchitectures = AndroidArchitecture.ARM64;
        
        //Set default window height
        PlayerSettings.Android.defaultWindowHeight = 100;
        
        BuildPlayerOptions options = new BuildPlayerOptions();
        options.scenes = new[] { "Assets/Scenes/SampleScene.unity" };
        options.locationPathName = "Build/AndroidBuild.apk";
        options.target = BuildTarget.Android;
        options.targetGroup = BuildTargetGroup.Android;
        BuildPipeline.BuildPlayer(options);
    }
}
```
