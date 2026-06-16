<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Audio.AudioPlayableOutput.Create.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| graph | The PlayableGraph that will contain the AnimationPlayableOutput. |
| name | The name of the output. |
| target | The AudioSource that will play the AudioPlayableOutput source Playable. |

### Returns

**AudioPlayableOutput** A new AudioPlayableOutput attached to the PlayableGraph.

### Description

Creates an AudioPlayableOutput in the PlayableGraph.

The AudioSource plays the source Playable of the AudioPlayableOutput. This source Playable can be set with SetSourcePlayable.
