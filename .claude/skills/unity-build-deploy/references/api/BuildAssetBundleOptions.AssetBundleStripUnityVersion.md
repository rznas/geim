<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/BuildAssetBundleOptions.AssetBundleStripUnityVersion.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Prevents the Unity Editor version from being recorded in the AssetBundle.

This flag is highly recommended in most scenarios.

 When this flag is **not** specified, the current version of the Unity Editor is recorded in the AssetBundle, specifically in the archive file header and header of each SerializedFile inside the archive. Including the Unity Editor version can be helpful for debugging purposes, as it allows you to identify the version of Unity used to build a specific AssetBundle.

 However, this behavior can result in unwanted side effects. For example, rebuilding an AssetBundle after installing a Unity patch, even if the actual content has not changed, will cause a change in the content of the AssetBundle. This can lead to unnecessary distribution overhead.

 Using `AssetBundleStripUnityVersion` eliminates this issue by using a placeholder version of "0.0.0" instead of the actual Unity Editor version.

 The version information is purely informational and does not affect the ability to load the AssetBundle across different Unity versions.
