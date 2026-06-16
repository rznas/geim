<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetPreview.SetPreviewTextureCacheSize.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| size | The number of previews that can be loaded into the cache before the least used previews are being unloaded. |

### Description

Set the asset preview cache to a size that can hold all visible previews on the screen at once.

If showing previews in a scrollpane make sure the cache larger than the count of the visible previews otherwise flickering will occur since least used previews will be unloaded to make space in the cache.
