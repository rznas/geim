<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Playables.PlayableExtensions.DisconnectInput.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| playable | The Playable used by this operation. |
| inputPort | The input port index. |

### Description

Disconnect the input port of a Playable.

This method is a simple helper on top of PlayableGraph.Disconnect.

 Use this templated extension method on any type that inherits from IPlayable.
