<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetDatabase.IsMetaFileOpenForEdit.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| assetObject | Object representing the asset whose metadata status you wish to query. |
| message | Returns a reason for the asset metadata not being open for edit. |
| statusOptions | Options for how the version control system should be queried. These options can effect the speed and accuracy of the query. Default is StatusQueryOptions.UseCachedIfPossible. |

### Returns

**bool** True if the asset's metadata is considered open for edit by the selected version control system.

### Description

Query whether an asset's metadata (.meta) file is open for edit in version control.

Your version control system may be configured to only allow a single user at a time to edit certain types of file, to avoid conflicts that arise when multiple users edit a file at the same time. In this case a user must 'open' that file for editing (also known as 'checking out') to ensure that they have permission to edit the file. Use this function to query the 'open for edit' status of a file in a version control system that supports it.

Additional resources: AssetDatabase.IsOpenForEdit, StatusQueryOptions.
