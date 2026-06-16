<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AndroidBlitType.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Describes the method for how content is displayed on the screen.

Options are as follows:

Use **Always** to render offscreen and blit to the backbuffer. Use **Never** to render directly to the backbuffer. Use **Auto** or automatically choose the most appropriate option.

Depending on the device, AndroidBlitType.Never may not support switching MSAA settings at runtime or rendering at non-native resolution. AndroidBlitType.Never does not provide a sRGB backbuffer. Linear rendering requires a framebuffer that does sRGB read/write conversions (see RenderTexture.sRGB), otherwise the generated image typically appears too dark. Therefore AndroidBlitType.Never is not recommended when linear rendering is used. If you want to use linear rendering with AndroidBlitType.Never despite this information, you have to setup your own sRGB render target and handle the blit to the backbuffer.

AndroidBlitType is ignored when the Vulkan Graphics API is used.

```csharp
using UnityEditor;
using UnityEditor.Build;
using UnityEngine;public class AndroidBlitTypeExample : MonoBehaviour
{
    [MenuItem("Build/Android Blit Type Auto Example")]
    public static void AndroidBlitTypes()
    {
        PlayerSettings.SetScriptingBackend(NamedBuildTarget.Android, ScriptingImplementation.IL2CPP);
        PlayerSettings.Android.targetArchitectures = AndroidArchitecture.ARM64;        //Set AndroidBlitType to Auto which automatically determines
        //the most appropriate method for drawing to the screen.
        PlayerSettings.Android.blitType = AndroidBlitType.Auto;        BuildPlayerOptions options = new BuildPlayerOptions();
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
| Always | Always render offscreen and blit to the backbuffer. |
| Never | Never render offscreen and blit to the backbuffer. Always render directly to the backbuffer. |
| Auto | Automatically determine the most appropriate method for drawing to the screen. |
