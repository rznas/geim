<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/BuildPlayerWithProfileOptions-assetBundleManifestPath.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The path to a manifest file describing all the AssetBundles used in the build (optional).

When you call BuildPipeline.BuildAssetBundles to create your AssetBundles, Unity will also generate a .manifest file with a file name matching the parent directory. You can assign the path to this manifest file to `assetBundleManifestPath` to ensure that a player build doesn't strip any types used in your AssetBundles.

You don't need to set this property when using `link.xml` files, or when generating AssetBundles using the [Addressables](https://docs.unity3d.com/Packages/com.unity.addressables@latest) package.

For more information about code stripping, refer to Managed code stripping.
