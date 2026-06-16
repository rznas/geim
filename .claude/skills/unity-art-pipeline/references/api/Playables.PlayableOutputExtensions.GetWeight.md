<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Playables.PlayableOutputExtensions.GetWeight.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| output | The PlayableOutput used by this operation. |

### Returns

**float** The weight of the connection to the source playable.

### Description

Returns the weight of the connection from the PlayableOutput to the source playable.

The details are specific to the type of PlayableOutput. For Example, in AnimationPlayableOutput, the weight determines how multiple outputs targeting animator will blend together.
