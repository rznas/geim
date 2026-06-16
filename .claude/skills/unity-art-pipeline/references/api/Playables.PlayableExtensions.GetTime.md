<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Playables.PlayableExtensions.GetTime.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| playable | The Playable used by this operation. |

### Returns

**double** The current time in seconds.

### Description

Returns the current local time of the Playable.

The PlayableGraph updates the current time between Update and LateUpdate (refer to Order of execution for event functions), 
 unless SetTime is called since the last evaluation. In this case, the PlayableGraph will not automatically advance the time.

Use this templated extension method on any type that inherits from IPlayable.
