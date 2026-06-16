<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Playables.PlayableExtensions.SetPropagateSetTime.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| playable | The Playable used by this operation. |
| value | True to enable time propagation. |

### Description

Changes the time propagation behavior of this Playable.

When enabled, the playable will propagate its local time to its inputs.

When disabled, the playable will not propagate its local time to its inputs.

By default, this is disabled. It can be used to automatically synchronize the local time between an input and an output.

Use this templated extension method on any type that inherits from IPlayable.
