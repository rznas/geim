<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PlayerSettings.Android-buildApkPerCpuArchitecture.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Create a separate APK for each CPU architecture.

```csharp
using UnityEngine;
using UnityEditor;
using UnityEditor.Build;public class BuildApkPerCpuArchitectureSample : MonoBehaviour
{
    [MenuItem("Build/Build Apk Per Cpu Architecture Sample")]
    public static void BuildApkPerCpuArchitecture()
    {
        PlayerSettings.SetScriptingBackend(NamedBuildTarget.Android, ScriptingImplementation.IL2CPP);
        
        //Enabling buildApkPerCpuArchitecture
        PlayerSettings.Android.buildApkPerCpuArchitecture = true;
        
        BuildPlayerOptions options = new BuildPlayerOptions();
        options.scenes = new[] { "Assets/Scenes/SampleScene.unity" };
        options.locationPathName = "Build/AndroidBuild.apk";
        options.target = BuildTarget.Android;
        options.targetGroup = BuildTargetGroup.Android;
        BuildPipeline.BuildPlayer(options);
    }
}
```
