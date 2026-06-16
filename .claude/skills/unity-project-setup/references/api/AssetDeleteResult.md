<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetDeleteResult.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Result of Asset delete operation

### Properties

| Property | Description |
| --- | --- |
| DidNotDelete | Tells the internal implementation that the callback did not delete the asset. The asset will be delete by the internal implementation. |
| FailedDelete | Tells Unity that the file cannot be deleted and Unity should leave it alone. |
| DidDelete | Tells Unity that the asset was deleted by the callback. Unity will not try to delete the asset, but will delete the cached version and preview file. |
