<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Playables.PlayableExtensions.SetPlayState.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| playable | The Playable used by this operation. |
| value | The new PlayState. |

### Description

Changes the current PlayState of the Playable.

PlayState.Playing: The local time of this Playable will be updated during the evaluation of the PlayableGraph.

PlayState.Paused: The local time of this Playable will not be updated during the evaluation of the PlayableGraph.

Use this templated extension method on any type that inherits from IPlayable.
