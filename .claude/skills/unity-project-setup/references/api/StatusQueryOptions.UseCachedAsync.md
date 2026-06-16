<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/StatusQueryOptions.UseCachedAsync.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

This option sets the status query to first use the latest valid version control system status of the file and query for a valid status asynchronously if otherwise.

Note that AssetDatabase.IsOpenForEdit and AssetDatabase.IsMetaFileOpenForEdit returns false while a query is in progress as the VCS status is still unknown.

Additional resources: AssetDatabase.IsOpenForEdit, AssetDatabase.IsMetaFileOpenForEdit.
