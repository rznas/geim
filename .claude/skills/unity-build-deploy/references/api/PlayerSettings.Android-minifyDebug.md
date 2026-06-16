<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PlayerSettings.Android-minifyDebug.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Enable to minify debug build.

Enable to minify your java code in debug (development) configuration. Use proguard configuration file to control the process.

**Note:** Minification can sometimes remove needed code and produce non-working binaries.

```csharp
using UnityEngine;
using UnityEditor;
using UnityEditor.Build;public class MinifyDebugSample : MonoBehaviour
{
    [MenuItem("Build/Minify Debug Sample")]
    public static void BuilMinifyDebugSample()
    {
        PlayerSettings.SetScriptingBackend(NamedBuildTarget.Android, ScriptingImplementation.IL2CPP);
        PlayerSettings.Android.targetArchitectures = AndroidArchitecture.ARM64;        //Set minifyDebug value to true
        PlayerSettings.Android.minifyDebug = true;        BuildPlayerOptions options = new BuildPlayerOptions();
        options.scenes = new[] { "Assets/Scenes/SampleScene.unity" };
        options.locationPathName = "Build/AndroidBuild.apk";
        options.target = BuildTarget.Android;
        options.targetGroup = BuildTargetGroup.Android;
        BuildPipeline.BuildPlayer(options);
    }
}
```
