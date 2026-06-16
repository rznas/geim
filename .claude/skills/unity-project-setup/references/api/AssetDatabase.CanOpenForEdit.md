<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetDatabase.CanOpenForEdit.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| assetObject | Object representing the asset whose status you wish to query. |
| assetOrMetaFilePath | Path to the asset file or its .meta file on disk, relative to project folder. |
| message | Returns a reason for the asset not being available for edit. |
| statusOptions | Options for how the version control system should be queried. These options can effect the speed and accuracy of the query. Default is StatusQueryOptions.UseCachedIfPossible. |

### Returns

**bool** True if the asset is considered available for edit by the selected version control system.

### Description

Query whether an Asset file can be opened for editing in version control and is not exclusively locked by another user or otherwise unavailable.

See AssetDatabase.IsOpenForEdit for detailed explanation.

Additional resources: StatusQueryOptions, AssetDatabase.MakeEditable.

### Parameters

| Parameter | Description |
| --- | --- |
| assetOrMetaFilePaths | Paths to Assets or their .meta files, relative to the project folder. |
| outNotEditablePaths | Destination list of non-editable Asset paths. |
| statusQueryOptions | Specifies how Unity should query the version control system. The default value is StatusQueryOptions.UseCachedIfPossible. |

### Description

Query which of the provided Asset files can be opened for editing in version control and are not remotely locked or otherwise unavailable.

This variant of the `CanOpenForEdit` function can query multiple Asset paths at once. It writes paths for Assets that are not 'available for edit' into the `outNotEditablePaths` list.
