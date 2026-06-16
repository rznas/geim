<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.PropertyDatabase.Flush.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Triggers a manual update of the backing file.

When a change happens on the PropertyDatabase, it is stored in memory until we update the backing file. If the PropertyDatabase is created with the flag **autoFlush** set to true, this is done automatically. If not, you have to trigger the update manually with PropertyDatabase.Flush. This function is blocking until the operation completes.
