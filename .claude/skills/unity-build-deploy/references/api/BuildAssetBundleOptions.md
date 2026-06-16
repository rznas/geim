<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/BuildAssetBundleOptions.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Asset Bundle building options.

These flags allow you to configure options when calling BuildPipeline.BuildAssetBundles.

 Use AssetBundleOptions to control the compression level of the AssetBundles. By default, AssetBundles are built with full file compression using CompressionType.Lzma. To compress the AssetBundle data into individual segments, use BuildAssetBundleOptions.ChunkBasedCompression. To avoid compressing the data, use BuildAssetBundleOptions.UncompressedAssetBundle.

 Additional resources: AssetBundle, BuildPipeline.BuildAssetBundles

```csharp
//Create a folder (right click in the Assets folder and go to Create>Folder), and name it “Editor” if it doesn’t already exist
//Place this script in the Editor folder//This script creates a new Menu named “Build Asset” and new options within the menu named “Normal” and “Strict Mode”. Click these menu items to build an AssetBundle into a folder with either no extra build options, or a strict build.using UnityEngine;
using UnityEditor;public class Example
{
    //Creates a new menu (Build Asset Bundles) and item (Normal) in the Editor
    [MenuItem("Build Asset Bundles/Normal")]
    static void BuildABsNone()
    {
        //Build AssetBundles with no special options
        //They will be written in the custom folder ("MyAssetBuilds") which needs to exist prior to this call.
        BuildPipeline.BuildAssetBundles("Assets/MyAssetBuilds", BuildAssetBundleOptions.None, BuildTarget.StandaloneOSX);
    }    //Creates a new item (Strict Mode) in the new Build Asset Bundles menu
    [MenuItem("Build Asset Bundles/Strict Mode")]
    static void BuildABsStrict()
    {
        //Build the AssetBundles in strict mode (build fails if any errors are detected)
        BuildPipeline.BuildAssetBundles("Assets/MyAssetBuilds", BuildAssetBundleOptions.StrictMode, BuildTarget.StandaloneOSX);
    }
}
```

### Properties

| Property | Description |
| --- | --- |
| None | Build assetBundle without any special option. |
| UncompressedAssetBundle | Don't compress the data when creating the AssetBundle. |
| DisableWriteTypeTree | Omits type information from the AssetBundle. |
| ForceRebuildAssetBundle | Initiates a complete rebuild of AssetBundles. |
| IgnoreTypeTreeChanges | Ignore the type tree changes when doing the incremental build check. |
| AppendHashToAssetBundleName | Appends the hash to the AssetBundle name. |
| ChunkBasedCompression | Use chunk-based LZ4 compression when creating the AssetBundle. |
| StrictMode | Fails the build if any errors are reported during it. |
| DryRunBuild | Performs a simulated build of AssetBundles without actually creating the files. |
| DisableLoadAssetByFileName | Disables calling LoadAsset on Asset Bundles using only the file name. |
| DisableLoadAssetByFileNameWithExtension | Prevents loading assets from Asset Bundles using the file name with its extension. |
| AssetBundleStripUnityVersion | Prevents the Unity Editor version from being recorded in the AssetBundle. |
| UseContentHash | Use the content of the asset bundle to calculate the hash. This feature is always enabled. |
| StripUnatlasedSpriteCopies | Use to prevent duplicating a texture when it is referenced in multiple bundles. This would primarily happen with particle systems. The new behavior does not duplicate the texture if the sprite does not belong to an atlas. Using this flag is the desired behavior, but is not set by default for backwards compatability reasons. |
