<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/VersionControl.Provider.Move.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| from | Path to the source asset. |
| to | Path to the destination. |

### Description

Uses the version control plugin to move an asset from one path to another.

Do note that the source asset will be deleted and a new copy will be created in the destination. This will be reflected in the same manner in the outgoing changelist.

Also, after this operation is completed, Asset Database is not refreshed automatically. It can be updated by calling AssetDatabase.Refresh.
