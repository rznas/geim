<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Playables.PlayableExtensions.Destroy.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| playable | The Playable used by this operation. |

### Description

Destroys the current Playable.

NOTE: Any other Playables connected to the destroyed Playable's output ports will be orphaned; they will still exist in the PlayableGraph, but will not be updated until they are connected to a graph branch that is connected to a PlayableOutput.

Use this templated extension method on any type that inherits from IPlayable.
