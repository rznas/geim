<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetDatabase.IsOpenForEdit.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| assetObject | Object representing the asset whose status you wish to query. |
| assetOrMetaFilePath | Path to the asset file or its .meta file on disk, relative to project folder. |
| message | Returns a reason for the asset not being open for edit. |
| statusOptions | Options for how the version control system should be queried. These options can effect the speed and accuracy of the query. Default is StatusQueryOptions.UseCachedIfPossible. |

### Returns

**bool** True if the asset is considered open for edit by the selected version control system.

### Description

Query whether an Asset file is open for editing in version control.

Your version control system may be configured to only allow a single user at a time to edit certain types of files, to avoid conflicts that arise when multiple users edit a file at the same time. In this case a user must 'open' that file for editing (also known as 'checking out') to ensure that they have permission to edit the file. Use this function to query the 'open for edit' status of a file in a version control system that supports it.

File paths that are outside of Unity project folder, or not under version controlled folders (for example, "Library" or "Temp"), are always considered open for editing. `IsOpenForEdit` returns `true` for these paths.

File paths that refer to non-local Package folders are always considered to be non-editable. `IsOpenForEdit` returns `false` for these paths.

When no version control system is active, then file paths inside the project are all considered open for editing.

When a version control system is active, then for example under Perforce VCS, "added" and "checked out locally" files are considered open for editing, and other files are not.

Additional resources: AssetDatabase.IsMetaFileOpenForEdit, StatusQueryOptions, AssetDatabase.MakeEditable.

### Parameters

| Parameter | Description |
| --- | --- |
| assetOrMetaFilePaths | Paths to Assets or their .meta files, relative to the project folder. |
| outNotEditablePaths | Destination list of non-editable Asset paths. |
| statusQueryOptions | Specifies how Unity should query the version control system. The default value is StatusQueryOptions.UseCachedIfPossible. |

### Description

Query which of the provided Asset files are open for editing in version control.

This variant of the `IsOpenForEdit` function can query multiple Asset paths at once. It writes paths for Assets that are not 'open for edit' into the `outNotEditablePaths` list.
