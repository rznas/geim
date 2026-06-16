<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PlayerSettings.Android-renderOutsideSafeArea.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Extends rendering layout into display cutout area, utilizing all of the available screen space.

```csharp
using UnityEngine;
using UnityEditor;
using UnityEditor.Build;public class RenderOutsideSafeAreaSample : MonoBehaviour
{
    [MenuItem("Build/Render Outside Safe Area Sample")]
    public static void BuildRenderOutsideSafeAreaSample()
    {
        PlayerSettings.SetScriptingBackend(NamedBuildTarget.Android, ScriptingImplementation.IL2CPP);
        PlayerSettings.Android.targetArchitectures = AndroidArchitecture.ARM64;        //Disables rendering outside safe area
        PlayerSettings.Android.renderOutsideSafeArea = false;        BuildPlayerOptions options = new BuildPlayerOptions();
        options.scenes = new[] { "Assets/Scenes/SampleScene.unity" };
        options.locationPathName = "Build/AndroidBuild.apk";
        options.target = BuildTarget.Android;
        options.targetGroup = BuildTargetGroup.Android;
        BuildPipeline.BuildPlayer(options);
    }
}
```
