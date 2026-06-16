<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AndroidArchitecture.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Android CPU architecture.

```csharp
using UnityEditor.Build;
using UnityEditor;
using UnityEngine;public class AndroidArchitectureExample : MonoBehaviour
{
    [MenuItem("Build/Android Architectures Example")]
    public static void AndroidArchitectures()
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

### Properties

| Property | Description |
| --- | --- |
| None | Invalid architecture. |
| ARMv7 | 32-bit ARM architecture. |
| ARM64 | 64-bit ARM architecture. |
| X86_64 | 64-bit Intel architecture. |
| All | All architectures. |
