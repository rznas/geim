<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Playables.PlayableExtensions.SetTime.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| playable | The Playable used by this operation. |
| value | The current time in seconds. |

### Description

Changes the current local time of the Playable.

Use this method to override the next PlayableGraph evaluation of the current time. 
 Normally, the PlayableGraph updates the current time between Update and LateUpdate (see Execution Order).

Use this templated extension method on any type that inherits from IPlayable.
