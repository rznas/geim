<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PlayerSettings.Android-textureCompressionFormats.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Target texture compression formats.

If you set multiple texture compression formats, you can use the [Texture Compression Targeting](https://developer.android.com/guide/playcore/asset-delivery/texture-compression) feature. To use this feature you must also build the application as an Android App Bundle (aab file) or export a Gradle project for an Android App Bundle. In this case, Unity generates the Android App Bundle or the Gradle project with asset packs that include textures compressed using the texture compression formats you specify in this property. Android treats the first texture compression format as the "default".

If you only set one target texture compression format, or if you build your application as an apk or export Gradle project for an apk, Android only uses the first (or only) texture compression format to compress textures. In this case, you can override the target texture compression format using the EditorUserBuildSettings.androidBuildSubtarget property.

You can't add the TextureCompressionFormat.BPTC or TextureCompressionFormat.Unknown options to texture compression formats for Android, also it's not possible to assign a null value or an empty array.

```csharp
using UnityEngine;
using UnityEditor;
using UnityEditor.Build;public class TextureCompressionFormatsSample : MonoBehaviour
{
    [MenuItem("Build/Texture Compression Formats Sample")]
    public static void BuildAndroidTextureCompressionSample()
    {
        PlayerSettings.SetScriptingBackend(NamedBuildTarget.Android, ScriptingImplementation.IL2CPP);
        PlayerSettings.Android.targetArchitectures = AndroidArchitecture.ARM64;        // Set textureCompressionFormats to ETC2 and ASTC texture formats
        PlayerSettings.Android.textureCompressionFormats = new[]
        {
            TextureCompressionFormat.ETC2,
            TextureCompressionFormat.ASTC
        };
        
        // Configure an Android App Bundle build
        EditorUserBuildSettings.buildAppBundle = true;        // Configure build Player options
        BuildPlayerOptions buildOptions = new BuildPlayerOptions();
        buildOptions.scenes = new[] { "Assets/Scenes/SampleScene.unity" };
        buildOptions.locationPathName = "Build/TextureCompressionAndroidBuild.aab";
        buildOptions.target = BuildTarget.Android;
        buildOptions.targetGroup = BuildTargetGroup.Android;
        BuildPipeline.BuildPlayer(buildOptions);
        
        // Log each configured texture compression format
        foreach (TextureCompressionFormat format in PlayerSettings.Android.textureCompressionFormats)
        {
            Debug.Log($"Configured Texture Compression Format: {format}");
        }
    }
}
```
