<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PlayerSettings.Android-autoRotationBehavior.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Indicate whether your application window rotates based on device orientation settings (User) or device orientation sensor (Sensor), when default orientation is Auto Rotation.

```csharp
using UnityEngine;
using UnityEditor;
using UnityEditor.Build;public class AutoRotationBehaviorSample : MonoBehaviour
{
    [MenuItem("Build/AutoRotationBehavior Sample")]
    public static void BuildAutoRotationBehaviorSample()
    {
        PlayerSettings.SetScriptingBackend(NamedBuildTarget.Android, ScriptingImplementation.IL2CPP);        PlayerSettings.Android.targetArchitectures = AndroidArchitecture.ARM64;
        
        //Set autoRotation behavior value to user
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
