<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PlayerSettings.Android-targetArchitectures.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A set of CPU architectures for the Android build target.

```csharp
using UnityEngine;
using UnityEditor;
using UnityEditor.Build;public class TargetArchitecturesExample : MonoBehaviour
{
    [MenuItem("Build/Android Target Architectures Example")]
    public static void TargetArchitectures()
    {
        PlayerSettings.SetScriptingBackend(NamedBuildTarget.Android, ScriptingImplementation.IL2CPP);        //Set the targetArchitecture to ARM64 AndroidAchitecture
        PlayerSettings.Android.targetArchitectures = AndroidArchitecture.ARM64;        BuildPlayerOptions options = new BuildPlayerOptions();
        options.scenes = new[] { "Assets/Scenes/SampleScene.unity" };
        options.locationPathName = "Builds/AndroidBuild.apk";
        options.target = BuildTarget.Android;
        options.targetGroup = BuildTargetGroup.Android;        BuildPipeline.BuildPlayer(options);
    }
}
```
