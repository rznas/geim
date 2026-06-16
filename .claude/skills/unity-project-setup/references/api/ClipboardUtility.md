<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ClipboardUtility.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A class containing methods to assist with clipboard operations.

### Static Properties

| Property | Description |
| --- | --- |
| canCopyGameObject | Optional filtering functions invoked to determine if a GameObject can be copied before any action is taken. |
| canCutGameObject | Optional filtering functions invoked to determine if a GameObject can be cut before any action is taken. |
| canDuplicateGameObject | Optional filtering functions invoked to determine if a GameObject can be duplicated before any action is taken. |

### Events

| Event | Description |
| --- | --- |
| copyingGameObjects | Event triggered before the selected GameObjects are copied to the clipboard. |
| cuttingGameObjects | Event triggered before the selected GameObjects are cut to the clipboard. |
| duplicatedGameObjects | Event triggered after GameObjects have been duplicated. |
| duplicatingGameObjects | Event triggered before GameObjects are about to be duplicated. |
| pastedGameObjects | Event triggered after GameObjects are pasted from the clipboard. |
| rejectedGameObjects | Event triggered after the filtering process of canCopyGameObject, canCutGameObject or canDuplicateGameObject receiving an array of GameObjects which did not pass the filtering functions. |
