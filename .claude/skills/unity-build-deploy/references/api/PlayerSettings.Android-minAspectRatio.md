<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PlayerSettings.Android-minAspectRatio.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Minimum aspect ratio which is supported by the application.

This value is expressed as (longer dimension / shorter dimension) in decimal form. For example, if the minimum aspect ratio is 4:3, set this value to 1.33. This value needs to be greater than or equal to 1.0. By default it is set to 1.0.

**Note**: This attribute is ignored if you enable PlayerSettings.resizeableActivity. This attribute is available from Android API level 29.

```csharp
using UnityEngine;
using UnityEditor;
using UnityEditor.Build;public class MinAspectRatioSample : MonoBehaviour
{
    [MenuItem("Build/MinAspectRatio Sample")]
    public static void BuildMinAspectRatioSample()
    {
        PlayerSettings.SetScriptingBackend(NamedBuildTarget.Android, ScriptingImplementation.IL2CPP);
        PlayerSettings.Android.targetArchitectures = AndroidArchitecture.ARM64;        //Set min aspect ratio to 2.0f
        PlayerSettings.Android.minAspectRatio = 2.0f;        BuildPlayerOptions options = new BuildPlayerOptions();
        options.scenes = new[] { "Assets/Scenes/SampleScene.unity" };
        options.locationPathName = "Build/AndroidBuild.apk";
        options.target = BuildTarget.Android;
        options.targetGroup = BuildTargetGroup.Android;
        BuildPipeline.BuildPlayer(options);
    }
}
```
