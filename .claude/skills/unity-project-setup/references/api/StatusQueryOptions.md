<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/StatusQueryOptions.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Options for querying the version control system status of a file.

Additional resources: AssetDatabase.IsOpenForEdit, AssetDatabase.IsMetaFileOpenForEdit.

### Properties

| Property | Description |
| --- | --- |
| ForceUpdate | Force a refresh of the version control system status of the file. This is slow but accurate. |
| UseCachedIfPossible | This option sets the status query to first use the latest valid version control system status of the file and query for a valid status synchronously if otherwise. |
| UseCachedAsync | This option sets the status query to first use the latest valid version control system status of the file and query for a valid status asynchronously if otherwise. |
