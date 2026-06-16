<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PlayerSettings.Android-androidTVCompatibility.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Provide a build that is Android TV compatible.

```csharp
using UnityEngine;
using UnityEditor;
using UnityEditor.Build;public class AndroidTVCompatibilitySample : MonoBehaviour
{
    [MenuItem("Build/AndroidTV Compatibility Sample")]
    public static void BuildAndroidTVCompatibility()
    {
        PlayerSettings.SetScriptingBackend(NamedBuildTarget.Android, ScriptingImplementation.IL2CPP);
        PlayerSettings.Android.targetArchitectures = AndroidArchitecture.ARM64;        //Set androidTVCompatiblility to true
        PlayerSettings.Android.androidTVCompatibility = true;        BuildPlayerOptions options = new BuildPlayerOptions();
        options.scenes = new[] { "Assets/Scenes/SampleScene.unity" };
        options.locationPathName = "Build/AndroidBuild.apk";
        options.target = BuildTarget.Android;
        options.targetGroup = BuildTargetGroup.Android;
        BuildPipeline.BuildPlayer(options);
    }
}
```
