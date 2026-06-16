<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Build.Reporting.PackedAssetInfo-sourceAssetPath.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The file path to the source Asset that the build process used to generate the Packed Asset, relative to the Project directory.

Note: the same path may be repeated many times in the PackedAssets array, because PackedAssets track objects, and a single Asset can contain many objects.

Note: Some packed Assets might not have a source Asset. For example a Sprite Atlas that is generated at build time. Also, AssetBundles contain generated objects that do not come from any source asset, e.g. the AssetBundleManifest.
