<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Resources.LoadAssetAtPath.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| assetPath | Pathname of the target asset. |
| type | Type filter for objects returned. |

### Description

Returns a resource at an asset path (Editor Only).

This function always return null in the standalone player or web player. This is useful for quickly accessing an asset for use in the editor only.

**Note:** All asset names and paths in Unity use forward slashes, paths using backslashes will **not** work.
 This returns only asset object that is visible in the Project view.

Resources.LoadAssetAtPath is deprecated. Use AssetDatabase.LoadAssetAtPath instead.

Note that web player is not supported from 5.4.0 onwards.

### Parameters

| Parameter | Description |
| --- | --- |
| assetPath | Pathname of the target asset. |

### Description

Returns a resource at an asset path (Editor Only).

This function always return null in the standalone player or web player. This is useful for quickly accessing an asset for use in the editor only.

**Note:** All asset names and paths in Unity use forward slashes, paths using backslashes will **not** work.
 This returns only asset object that is visible in the Project view.

Note that web player is not supported from 5.4.0 onwards.
