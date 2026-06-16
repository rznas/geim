<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Playables.PlayableExtensions.SetDelay.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| playable | The Playable used by this operation. |
| delay | The delay in seconds. |

### Description

Set a delay until the playable starts.

The delay is **not** multiplied by the speed of the playable because it happens before the playable starts.

Use this templated extension method on any type that inherits from IPlayable.
