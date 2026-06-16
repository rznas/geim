<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetPreview.IsLoadingAssetPreview.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| instanceID | InstanceID of the assset that a preview has been requested for by: AssetPreview.GetAssetPreview(). |

### Description

Loading previews is asynchronous so it is useful to know if a specific asset preview is in the process of being loaded so client code e.g can repaint while waiting for the loading to finish.
