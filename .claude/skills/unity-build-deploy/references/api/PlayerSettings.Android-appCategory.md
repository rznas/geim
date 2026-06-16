<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PlayerSettings.Android-appCategory.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Specify the category for your application that best represents its primary functionality.

Refer to the [Android documentation](https://developer.android.com/guide/topics/manifest/application-element#appCategory) for the available category options.

**Notes:**

- For new projects, this property is enabled and set to **Game** by default.
- For existing projects with `PlayerSettings.Android.androidIsGame` set to false, this property remains disabled.

```csharp
using UnityEngine;
using UnityEditor;
using UnityEditor.Build;public class AppCategorySample : MonoBehaviour
{
    [MenuItem("Build/AppCategory Sample")]
    public static void BuildAndroidAppCategorySample()
    {
        PlayerSettings.SetScriptingBackend(NamedBuildTarget.Android, ScriptingImplementation.IL2CPP);
        PlayerSettings.Android.targetArchitectures = AndroidArchitecture.ARM64;        //Set App Category value to game
        PlayerSettings.Android.appCategory = "game";        BuildPlayerOptions options = new BuildPlayerOptions();
        options.scenes = new[] { "Assets/Scenes/SampleScene.unity" };
        options.locationPathName = "Build/AndroidBuild.apk";
        options.target = BuildTarget.Android;
        options.targetGroup = BuildTargetGroup.Android;
        BuildPipeline.BuildPlayer(options);
    }
}
```
