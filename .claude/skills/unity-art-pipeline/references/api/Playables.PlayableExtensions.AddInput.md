<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Playables.PlayableExtensions.AddInput.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| playable | The Playable used by this operation. |
| sourcePlayable | The Playable to connect to. |
| sourceOutputIndex | The output port of the Playable. |
| weight | The weight of the created input port. |

### Returns

**int** The index of the newly created input port.

### Description

Create a new input port and connect it to the output port of the given Playable.

If several inputs are needed, it is better to use SetInputCount and ConnectInput.
 This method is a mere helper on top of PlayableGraph.Connect.

Use this templated extension method on any type that inherits from IPlayable.
