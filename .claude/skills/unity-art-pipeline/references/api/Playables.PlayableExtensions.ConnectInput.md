<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Playables.PlayableExtensions.ConnectInput.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| playable | The Playable used by this operation. |
| inputIndex | The input port index. |
| sourcePlayable | The Playable to connect to. |
| sourceOutputIndex | The output port of the Playable. |
| weight | The weight of the input port. |

### Description

Connect the output port of a Playable to one of the input ports.

This method is a simple helper on top of PlayableGraph.Connect.

Use this templated extension method on any type that inherits from IPlayable.
