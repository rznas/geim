<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Playables.PlayableExtensions.GetInputWeight.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| playable | The Playable used by this operation. |
| inputIndex | The port index. |

### Returns

**float** The current weight of the connected Playable.

### Description

Returns the weight of the Playable connected at the given input port index.

Use this templated extension method on any type that inherits from IPlayable.
