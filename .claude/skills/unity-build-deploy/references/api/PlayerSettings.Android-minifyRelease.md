<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PlayerSettings.Android-minifyRelease.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Enable to minify release build.

Enable to minify your java code in release configuration. Use proguard configuration file to control the process.

**Note**: Minification can sometimes remove needed code and produce non-working binaries.

```csharp
using UnityEngine;
using UnityEditor;
using UnityEditor.Build;public class MinifyReleaseExample : MonoBehaviour
{
    [MenuItem("Build/Android Minify Release Example")]
    public static void MinifyRelease()
    {
        PlayerSettings.SetScriptingBackend(NamedBuildTarget.Android, ScriptingImplementation.IL2CPP);
        PlayerSettings.Android.targetArchitectures = AndroidArchitecture.ARM64;        //Enable minify release
        PlayerSettings.Android.minifyRelease = true;        BuildPlayerOptions options = new BuildPlayerOptions();
        options.scenes = new[] { "Assets/Scenes/SampleScene.unity" };
        options.locationPathName = "Builds/AndroidBuild.apk";
        options.target = BuildTarget.Android;
        options.targetGroup = BuildTargetGroup.Android;        BuildPipeline.BuildPlayer(options);
    }
}
```
