<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Playables.PlayableGraph.DestroyPlayable.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| playable | The playable to destroy. |

### Description

Destroys the Playable.

Playables connected to the destroyed Playable output ports are orphaned. These orphaned Playables still exist in the PlayableGraph. Orphaned Playables are not updated until they are connected to a branch that is connected to a PlayableOutput.
