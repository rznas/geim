<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PlayerSettings.Android-disableDepthAndStencilBuffers.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Disable Depth and Stencil Buffers.

```csharp
using UnityEngine;
using UnityEditor;
using UnityEditor.Build;public class DisableDepthAndStencilBuffersSample : MonoBehaviour
{
    [MenuItem("Build/DisableDepthAndStencilBuffers Sample")]
    public static void BuildDisableDepthAndStencilBuffersSample()
    {
        PlayerSettings.SetScriptingBackend(NamedBuildTarget.Android, ScriptingImplementation.IL2CPP);
        PlayerSettings.Android.targetArchitectures = AndroidArchitecture.ARM64;
        
        //Set disableDepthAndStencilBuffers value to true
        PlayerSettings.Android.disableDepthAndStencilBuffers = true;
        
        BuildPlayerOptions options = new BuildPlayerOptions();
        options.scenes = new[] { "Assets/Scenes/SampleScene.unity" };
        options.locationPathName = "Build/AndroidBuild.apk";
        options.target = BuildTarget.Android;
        options.targetGroup = BuildTargetGroup.Android;
        BuildPipeline.BuildPlayer(options);
    }
}
```
