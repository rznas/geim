<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Animations.AnimationPlayableOutput.Create.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| graph | The PlayableGraph that will contain the AnimationPlayableOutput. |
| name | The name of the output. |
| target | The Animator that will process the PlayableGraph. |

### Returns

**AnimationPlayableOutput** A new AnimationPlayableOutput attached to the PlayableGraph.

### Description

Creates an AnimationPlayableOutput in the PlayableGraph.

The Animator plays the source Playable of the AnimationPlayableOutput. This source Playable can be set with SetSourcePlayable.
