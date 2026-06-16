<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Animations.AnimationLayerMixerPlayable.Create.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| graph | The PlayableGraph that will contain the new AnimationLayerMixerPlayable. |
| inputCount | The number of layers. |
| singleLayerOptimization | This optimization automatically sets the weight of the first animation layer to 1. Set to true If your layer mixer has a single animation layer and you want to bypass unnecessary weight calculations. This optimization is automatically set to false if your layer mixer has multiple animation layers. |

### Returns

**AnimationLayerMixerPlayable** A new AnimationLayerMixerPlayable linked to the PlayableGraph.

### Description

Creates an AnimationLayerMixerPlayable in the PlayableGraph.
