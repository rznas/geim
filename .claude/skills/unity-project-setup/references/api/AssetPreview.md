<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetPreview.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Utility for fetching asset previews by instance ID of assets, See AssetPreview.GetAssetPreview. Since previews are loaded asynchronously methods are provided for requesting if all previews have been fully loaded, see AssetPreview.IsLoadingAssetPreviews. Loaded previews are stored in a cache, the size of the cache can be controlled by calling [AssetPreview.SetPreviewTextureCacheSize].

### Static Methods

| Method | Description |
| --- | --- |
| GetAssetPreview | Returns a preview texture for an asset. |
| GetMiniThumbnail | Returns the thumbnail for an object (like the ones you see in the project view). |
| GetMiniTypeThumbnail | Returns the thumbnail for the type. |
| IsLoadingAssetPreview | Loading previews is asynchronous so it is useful to know if a specific asset preview is in the process of being loaded so client code e.g can repaint while waiting for the loading to finish. |
| IsLoadingAssetPreviews | Loading previews is asynchronous so it is useful to know if any requested previews are in the process of being loaded so client code e.g can repaint while waiting. |
| SetPreviewTextureCacheSize | Set the asset preview cache to a size that can hold all visible previews on the screen at once. |
