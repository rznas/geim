<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Audio.AudioMixer.TransitionToSnapshots.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| snapshots | The set of snapshots to be mixed. |
| weights | The mix weights for the snapshots specified. |
| timeToReach | Relative time after which the mixture should be reached from any current state. |

### Description

Transitions to a weighted mixture of the snapshots specified. This can be used for games that specify the game state as a continuum between states or for interpolating snapshots from a triangulated map location.
