<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AnimationMode.SamplePlayableGraph.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| graph | The PlayableGraph to sample. |
| index | The output index to sample in the Playable Graph. |
| time | The time at which to sample. |

### Description

Samples the specified output index of a PlayableGraph and also records modified properties when in Animation mode.

To successfully use this method, BeginSampling must be called before this method and EndSampling must be called after. If a property is no longer sampled (for example, through SampleAnimationClip, SamplePlayableGraph, or AddPropertyModification), the property reverts to its original value when EndSampling is called.
