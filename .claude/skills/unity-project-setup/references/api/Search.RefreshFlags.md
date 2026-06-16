<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.RefreshFlags.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Refresh flags are used to indicate why search view needs to be refreshed or updated.

### Properties

| Property | Description |
| --- | --- |
| None | No particular refresh reason were specified. |
| Default | Normal refresh. |
| StructureChanged | The structure of the current selection data has changed (i.e. the selected scene object got a new component). |
| DisplayModeChanged | The display mode or item size has changed. |
| ItemsChanged | The search item list has been updated. |
| GroupChanged | The current item group has changed. In example, the user selected a new search tab. |
| QueryStarted | A search query is about to be executed. |
| QueryCompleted | A search query has completed. |
