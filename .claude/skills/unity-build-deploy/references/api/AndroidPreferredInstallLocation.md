<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AndroidPreferredInstallLocation.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Options for preferred storage location for the application installation on Android devices.

These options indicate whether the application should be installed on an internal or external storage of the Android device. You can pass a value from this enum to PlayerSettings.Android.preferredInstallLocation.

```csharp
using UnityEngine;
using UnityEditor;
using UnityEditor.Build;public class PreferredInstallLocationSample : MonoBehaviour
{
    [MenuItem("Build/Preferred Install Location Sample")]
    static void BuildPreferredInstallLocationSample()
    {
        PlayerSettings.SetScriptingBackend(NamedBuildTarget.Android, ScriptingImplementation.IL2CPP);
        PlayerSettings.Android.targetArchitectures = AndroidArchitecture.ARM64;        // Set preferredInstallLocation to PreferExternal
        // This allows your app to be installed on external storage (SD card)
        PlayerSettings.Android.preferredInstallLocation = AndroidPreferredInstallLocation.PreferExternal;        var options = new BuildPlayerOptions();
        options.scenes = new[] { "Assets/Scenes/SampleScene.unity" };
        options.locationPathName = "Build/AndroidBuild.apk";
        options.target = BuildTarget.Android;
        options.targetGroup = BuildTargetGroup.Android;
        BuildPipeline.BuildPlayer(options);
    }
}
```

### Properties

| Property | Description |
| --- | --- |
| Auto | The Android OS determines the install location. The application doesn't have any preferences. |
| PreferExternal | Prefers application installation on external storage, if available. |
| ForceInternal | Forces the application to install into internal memory. |
