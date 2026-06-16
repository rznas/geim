<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Playables.PlayableExtensions.GetGraph.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| playable | The Playable used by this operation. |

### Returns

**PlayableGraph** The PlayableGraph associated with the current Playable.

### Description

Returns the PlayableGraph that owns this Playable. A Playable can only be used in the graph that was used to create it.

Use this templated extension method on any type that inherits from IPlayable.
