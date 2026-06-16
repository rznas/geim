<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetModificationProcessor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

AssetModificationProcessor lets you hook into saving of serialized assets and scenes which are edited inside Unity.

This lets you prevent writing of assets by Unity for integration with VCS solutions like Perforce which require locking of files.

 This can be used as a callback to know when Assets are saved. You can then make actions such as run code generator.

### Messages

| Message | Description |
| --- | --- |
| CanOpenForEdit | This is called by Unity when inspecting assets to determine if they can potentially be opened for editing. |
| FileModeChanged | Unity calls this method when file mode has been changed for one or more files. |
| IsOpenForEdit | This is called by Unity when inspecting assets to determine if an editor should be disabled. |
| MakeEditable | Unity calls this method when one or more files need to be opened for editing. |
| OnWillCreateAsset | Unity calls this method when it is about to create an Asset you haven't imported (for example, .meta files). |
| OnWillDeleteAsset | This is called by Unity when it is about to delete an asset from disk. |
| OnWillMoveAsset | Unity calls this method when it is about to move an Asset on disk. |
| OnWillSaveAssets | This is called by Unity when it is about to write serialized assets or Scene files to disk. |
