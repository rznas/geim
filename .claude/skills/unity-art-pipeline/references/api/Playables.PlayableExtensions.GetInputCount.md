<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Playables.PlayableExtensions.GetInputCount.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| playable | The Playable used by this operation. |

### Returns

**int** The count of inputs on the Playable.

### Description

Returns the number of inputs supported by the Playable.

The input count includes slots that aren't connected to anything. This is equivalent to, but much faster than calling GetInputs().Length.

Use this templated extension method on any type that inherits from IPlayable.
