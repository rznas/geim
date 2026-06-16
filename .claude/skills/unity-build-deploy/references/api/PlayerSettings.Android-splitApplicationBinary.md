<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PlayerSettings.Android-splitApplicationBinary.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Split application binary into modules.

When enabled, Unity splits up the player executable and data into modules:

**APK**: Generates an APK that consists only of the executable (Java and Native) code (~10MB), and the data for the first scene. Unity serializes the application data separately in an APK Expansion File (.obb). For more information, refer to APK expansion files.

**AAB**: Generates an AAB that contains a base module and one or more asset packs. The base module contains the executable (Java and Native) code (~10MB), and the data for the first scene. Asset packs contain the rest of the application data. For more information, refer to Asset packs in Unity.

```csharp
using UnityEngine;
using UnityEditor;
using UnityEditor.Build;public class SplitApplicationBinarySample : MonoBehaviour
{
    [MenuItem("Build/Split Application Binary Sample")]
    public static void BuildSplitApplicationBinarySample()
    {
        PlayerSettings.SetScriptingBackend(NamedBuildTarget.Android, ScriptingImplementation.IL2CPP);
        PlayerSettings.Android.targetArchitectures = AndroidArchitecture.ARM64;        //Set splitApplicationBinary to true
        PlayerSettings.Android.splitApplicationBinary = true;        BuildPlayerOptions options = new BuildPlayerOptions();
        options.scenes = new[] { "Assets/Scenes/SampleScene.unity" };
        options.locationPathName = "Build/AndroidBuild.apk";
        options.target = BuildTarget.Android;
        options.targetGroup = BuildTargetGroup.Android;
        BuildPipeline.BuildPlayer(options);
    }
}
```
