<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/BuildAssetBundleOptions.DisableLoadAssetByFileName.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Disables calling LoadAsset on Asset Bundles using only the file name.

Asset Bundles by default have three ways to look up the same asset: the full asset path, asset file name, and asset file name with extension. The full path is serialized into Asset Bundles, while the file name and file name with extension are generated when an Asset Bundle is loaded from a file.

 For example, "Assets/Prefabs/Player.prefab", "Player", and "Player.prefab" are different ways to reference the same asset.

 This option will set a flag on Asset Bundles to prevent creating the asset file name lookup, saving runtime memory and improving loading performance for asset bundles.

 Related topic: BuildAssetBundleOptions.DisableLoadAssetByFileNameWithExtension.
