<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PlayerSettings.Android-preferredInstallLocation.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Preferred application install location.

```csharp
using UnityEngine;
using UnityEditor;
using UnityEditor.Build;public class PreferredInstallLocationSample : MonoBehaviour
{
    [MenuItem("Build/Preferred Install Location Sample")]
    public static void BuildPreferredInstallLocationSample()
    {
        PlayerSettings.SetScriptingBackend(NamedBuildTarget.Android, ScriptingImplementation.IL2CPP);
        PlayerSettings.Android.targetArchitectures = AndroidArchitecture.ARM64;        //Set preferredInstallLocation
        PlayerSettings.Android.preferredInstallLocation = AndroidPreferredInstallLocation.Auto;        BuildPlayerOptions options = new BuildPlayerOptions();
        options.scenes = new[] { "Assets/Scenes/SampleScene.unity" };
        options.locationPathName = "Build/AndroidBuild.apk";
        options.target = BuildTarget.Android;
        options.targetGroup = BuildTargetGroup.Android;
        BuildPipeline.BuildPlayer(options);
    }
}
```
