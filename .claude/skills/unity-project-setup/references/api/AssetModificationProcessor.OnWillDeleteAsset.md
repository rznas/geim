<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetModificationProcessor.OnWillDeleteAsset.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

This is called by Unity when it is about to delete an asset from disk.

If this is implemented, it allows you to delete the asset yourself. Deletion of a file can be prevented by returning AssetDeleteResult.FailedDelete You should not call any Unity AssetDatabase api from within this callback, preferably keep to file operations or VCS apis.
