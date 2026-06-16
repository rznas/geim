<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetDatabase.RefreshImportMode.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Options for controlling the Editor's use of parallel processes when it imports assets during an asset database refresh.

### Properties

| Property | Description |
| --- | --- |
| InProcess | All assets are imported in the Editor process, and sequentially. |
| OutOfProcessPerQueue | As many assets as possible are imported in parallel, in import worker processes. Importer queues and dependencies reported by the importer are respected. |
