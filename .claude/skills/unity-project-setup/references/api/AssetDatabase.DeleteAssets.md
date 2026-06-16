<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetDatabase.DeleteAssets.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| paths | Project relative paths of the assets or folders to be deleted. |
| outFailedPaths | Project relative paths which could not be deleted. |

### Returns

**bool** Returns true if all assets in paths have successfully been deleted, false if any of the specified paths don't exist or couldn't be removed.

### Description

Lets you delete multiple assets or folders at once with performance benefits under version control.

Paths should be relative to the project folder, for example: "Assets/MyTextures/hello.png"

This should be used instead of AssetDatabase.DeleteAsset for performance reasons when opearating on many assets at once with active version control integration.

Note that the speedup will only be present when using Asset Database v2.

Additional resources: AssetDatabase.DeleteAsset, AssetDatabase.MoveAssetToTrash, AssetDatabase.MoveAssetsToTrash.
