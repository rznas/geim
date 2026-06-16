<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetBundleBuild.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

AssetBundle building map entry.

This structure is used with BuildPipeline.BuildAssetBundles to specify the name of a bundle and the names of the assets that it will contain. The array of AssetBundleBuild elements that is passed to the function is known as the "building map" and serves as an alternative to specifying the contents of bundles from the editor.

Additional resources: BuildPipeline.BuildAssetBundles.

### Properties

| Property | Description |
| --- | --- |
| addressableNames | Addressable name used to load an asset. |
| assetBundleName | AssetBundle name. |
| assetBundleVariant | AssetBundle variant. |
| assetNames | Asset names which belong to the given AssetBundle. |
