<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetBundleBuild-addressableNames.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Addressable name used to load an asset.

To provide custom addressable names for assets in the bundle, this array needs to be the same size as AssetBundleBuild.assetNames. Each entry in this array will be matched to the asset in assetNames based on index. If the string in a given index in addressableNames is empty, the value in assetNames at the same index is used instead (default behaviour).

Additional resources: AssetBundle.LoadAsset
