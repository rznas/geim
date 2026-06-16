<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PlayerSettings.Android-reportGooglePlayAppDependencies.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Indicates whether to track application dependencies for Google Play Store verification.

```csharp
using UnityEngine;
using UnityEditor;
using UnityEditor.Build;public class ReportGooglePlayAppDependenciesSample : MonoBehaviour
{
    [MenuItem("Build/Report Google Play App Dependencies Sample")]
    public static void BuildReportGooglePlayAppDependenciesSample()
    {
        PlayerSettings.SetScriptingBackend(NamedBuildTarget.Android, ScriptingImplementation.IL2CPP);
        PlayerSettings.Android.targetArchitectures = AndroidArchitecture.ARM64;        //Set reportGooglePlayAppDependencies to true
        PlayerSettings.Android.reportGooglePlayAppDependencies = true;        BuildPlayerOptions options = new BuildPlayerOptions();
        options.scenes = new[] { "Assets/Scenes/SampleScene.unity" };
        options.locationPathName = "Build/AndroidBuild.apk";
        options.target = BuildTarget.Android;
        options.targetGroup = BuildTargetGroup.Android;
        BuildPipeline.BuildPlayer(options);
    }
}
```
