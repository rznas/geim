<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PlayerSettings.Android-predictiveBackSupport.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Enable to use Android's [OnBackInvokedCallback](https://developer.android.com/guide/navigation/predictive-back-gesture) for handling back events on Android 13 and above.

```csharp
using UnityEngine;
using UnityEditor;
using UnityEditor.Build;public class PredictiveBackSupportSample : MonoBehaviour
{
    [MenuItem("Build/Predictive Back Support Sample")]
    public static void BuildPredictiveBackSupportSample()
    {
        PlayerSettings.SetScriptingBackend(NamedBuildTarget.Android, ScriptingImplementation.IL2CPP);
        PlayerSettings.Android.targetArchitectures = AndroidArchitecture.ARM64;        //Set predictiveBackSupport to true
        PlayerSettings.Android.predictiveBackSupport = true;        BuildPlayerOptions options = new BuildPlayerOptions();
        options.scenes = new[] { "Assets/Scenes/SampleScene.unity" };
        options.locationPathName = "Build/AndroidBuild.apk";
        options.target = BuildTarget.Android;
        options.targetGroup = BuildTargetGroup.Android;
        BuildPipeline.BuildPlayer(options);
    }
}
```
