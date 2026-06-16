<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/BuildPlayerOptions-assetBundleManifestPath.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The path to an manifest file describing all of the asset bundles used in the build (optional).

When you call BuildPipeline.BuildAssetBundles to create your AssetBundles, Unity will also generate a manifest file with a filename matching the parent directory name and ".manifest" as its extension. You can assign the path to this manifest file to `assetBundleManifestPath` to ensure that a player build does not strip any types used in the AssetBundles that you built.

You do not need to set this property when you use `link.xml` files, or if you generate AssetBundles using the [Addressables](https://docs.unity3d.com/Packages/com.unity.addressables@latest) package.

See Managed code stripping for more information about code stripping.
