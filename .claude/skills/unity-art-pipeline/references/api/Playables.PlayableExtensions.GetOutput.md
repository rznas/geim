<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Playables.PlayableExtensions.GetOutput.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| playable | The Playable used by this operation. |
| outputPort | The port index. |

### Returns

**Playable** Playable connected at the output index specified, or null if the index is valid but is not connected to anything. This happens if there was once a Playable connected at the index, but was disconnected via PlayableGraph.Disconnect.

### Description

Returns the Playable connected at the given output port index.

Use this templated extension method on any type that inherits from IPlayable.
