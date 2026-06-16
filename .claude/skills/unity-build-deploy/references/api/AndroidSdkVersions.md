<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AndroidSdkVersions.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The Android API levels to specify in scripts.

**Note**: The lowest API level listed here strictly corresponds to the lowest supported API level. However, do not use these values to determine the highest supported API level.

The following code example demonstrates how you can set the target API level using this enum.

```csharp
using UnityEngine;
using UnityEditor;
using UnityEditor.Build;public class AndroidSdkVersionSample : MonoBehaviour
{
    [MenuItem("Build/AndroidSdkVersion Sample")]
    public static void BuildAndroidSdkVersionSample()
    {
        PlayerSettings.SetScriptingBackend(NamedBuildTarget.Android, ScriptingImplementation.IL2CPP);
        PlayerSettings.Android.targetArchitectures = AndroidArchitecture.ARM64;        //Set the targetSdkversion to API level 36 using AndroidSdkVersions enum 
        PlayerSettings.Android.targetSdkVersion = AndroidSdkVersions.AndroidApiLevel36;        BuildPlayerOptions options = new BuildPlayerOptions();
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
| AndroidApiLevelAuto | Sets the target API level automatically, according to the latest installed SDK on your computer. |
| AndroidApiLevel25 | Android 7.1, "Nougat", API level 25. |
| AndroidApiLevel26 | Android 8.0, "Oreo", API level 26. |
| AndroidApiLevel27 | Android 8.1, "Oreo", API level 27. |
| AndroidApiLevel28 | Android 9.0, "Pie", API level 28. |
| AndroidApiLevel29 | Android 10.0, API level 29. |
| AndroidApiLevel30 | Android 11.0, API level 30. |
| AndroidApiLevel31 | Android 12, API level 31. |
| AndroidApiLevel32 | Android 12L, API level 32. |
| AndroidApiLevel33 | Android 13, API level 33. |
| AndroidApiLevel34 | Android 14, API level 34. |
| AndroidApiLevel35 | Android 15.0, API level 35. |
| AndroidApiLevel36 | Android 16.0, API level 36. |
