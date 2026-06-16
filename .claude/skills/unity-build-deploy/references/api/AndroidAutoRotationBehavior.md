<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AndroidAutoRotationBehavior.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Options to control the application window orientation when **Default orientation** is set to **Auto rotation**.

```csharp
using UnityEditor;
using UnityEngine;
using UnityEditor;
using UnityEditor.Build;public class AutoRotationBehaviorSample : MonoBehaviour
{
    [MenuItem("Build/AutoRotationBehavior Sample")]
    public static void BuildAutoRotationBehaviorSample()
    {
        PlayerSettings.SetScriptingBackend(NamedBuildTarget.Android, ScriptingImplementation.IL2CPP);        PlayerSettings.Android.targetArchitectures = AndroidArchitecture.ARM64;
        
        // Set autoRotation behavior to a value from AndroidAutoRotationBehavior enum
        // Replace with Sensor if needed
        PlayerSettings.Android.autoRotationBehavior = AndroidAutoRotationBehavior.User;
        
        BuildPlayerOptions options = new BuildPlayerOptions();
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
| User | Application window rotates based on the device’s auto rotate orientation settings. |
| Sensor | Application window rotates based on the device’s orientation sensor. |
