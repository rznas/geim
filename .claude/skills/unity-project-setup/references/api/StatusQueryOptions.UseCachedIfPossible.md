<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/StatusQueryOptions.UseCachedIfPossible.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

This option sets the status query to first use the latest valid version control system status of the file and query for a valid status synchronously if otherwise.

A synchronous query does not return a value until the VCS system responds. This can cause significant delays especially when the VCS is server controlled. It is better to use StatusQueryOptions.UseCachedAsync for an asynchronous query in that situation.

Additional resources: AssetDatabase.IsOpenForEdit, AssetDatabase.IsMetaFileOpenForEdit.
