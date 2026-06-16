<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PlayerSettings.Android-enableArmv9SecurityFeatures.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Enable Armv9 security features, including Pointer Authentication (PAuth, PAC) and Branch Target Identification (BTI) for Arm64 builds.

```csharp
using UnityEngine;
using UnityEditor;
using UnityEditor.Build;public class EnableArmv9SecurityFeaturesSample : MonoBehaviour
{
    [MenuItem("Build/Enable Armv9 Security Features Sample")]
    public static void BuildEnableArmv9SecurityFeaturesSample()
    {
        PlayerSettings.SetScriptingBackend(NamedBuildTarget.Android, ScriptingImplementation.IL2CPP);
        PlayerSettings.Android.targetArchitectures = AndroidArchitecture.ARM64;
        
        //Enables Armv9SecurityFeatures
        PlayerSettings.Android.enableArmv9SecurityFeatures = true;
        
        BuildPlayerOptions options = new BuildPlayerOptions();
        options.scenes = new[] { "Assets/Scenes/SampleScene.unity" };
        options.locationPathName = "Build/AndroidBuild.apk";
        options.target = BuildTarget.Android;
        options.targetGroup = BuildTargetGroup.Android;
        BuildPipeline.BuildPlayer(options);
    }
}
```
