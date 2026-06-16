<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PlayerSettings.Android-bundleVersionCode.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Android bundle version code.

Should be less than 100000 for buildApkPerCpuArchitecture to generate valid version codes.

```csharp
using UnityEngine;
using UnityEditor;
using UnityEditor.Build;public class BundleVersionCodeExample : MonoBehaviour
{
    [MenuItem("Build/Android Bundle Version Code Example")]
    public static void IncrementingBundleVersionExample()
    {
        PlayerSettings.SetScriptingBackend(NamedBuildTarget.Android, ScriptingImplementation.IL2CPP);
        PlayerSettings.Android.targetArchitectures = AndroidArchitecture.ARM64;        PlayerSettings.Android.bundleVersionCode++;        BuildPlayerOptions options = new BuildPlayerOptions();
        options.scenes = new[] { "Assets/Scenes/SampleScene.unity" };
        options.locationPathName = "Builds/AndroidBuild.apk";
        options.target = BuildTarget.Android;
        options.targetGroup = BuildTargetGroup.Android;        BuildPipeline.BuildPlayer(options);
    }
}
```
