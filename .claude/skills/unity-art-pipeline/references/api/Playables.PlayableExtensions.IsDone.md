<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Playables.PlayableExtensions.IsDone.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| playable | The Playable used by this operation. |

### Returns

**bool** True if the playable has completed its operation, false otherwise.

### Description

Returns a flag indicating that a playable has completed its operation.

If the duration of the playable is set, when the time of the playable reaches its duration during playback this flag will be set to true.

Use this templated extension method on any type that inherits from IPlayable.
