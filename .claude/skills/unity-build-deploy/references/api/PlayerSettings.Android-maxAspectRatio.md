<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PlayerSettings.Android-maxAspectRatio.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Maximum aspect ratio supported by the application.

This value is expressed as (longer dimension / shorter dimension) in decimal form. It can't be set to a value lower than `1.86` which approximately matches the older widescreen device aspect ratio of `17:9(16.74:9)`. By default, it is set to `2.4` which means the application supports all devices with aspect ratio up to `21.6:9`. For more information, refer to [Support different screen sizes](https://developer.android.com/guide/practices/screens-distribution#maxAspectRatio).

```csharp
using UnityEngine;
using UnityEditor;
using UnityEditor.Build;public class MaxAspectRatio : MonoBehaviour
{
    [MenuItem("Build/Android Max Aspect Ratio Example")]
    public static void AndroidArchitectures()
    {
        PlayerSettings.SetScriptingBackend(NamedBuildTarget.Android, ScriptingImplementation.IL2CPP);
        PlayerSettings.Android.targetArchitectures = AndroidArchitecture.ARM64;        //Set the maxAspectRatio to the default value
        PlayerSettings.Android.maxAspectRatio = 2.4f;        BuildPlayerOptions options = new BuildPlayerOptions();
        options.scenes = new[] { "Assets/Scenes/SampleScene.unity" };
        options.locationPathName = "Builds/AndroidBuild.apk";
        options.target = BuildTarget.Android;
        options.targetGroup = BuildTargetGroup.Android;        BuildPipeline.BuildPlayer(options);
    }
}
```
