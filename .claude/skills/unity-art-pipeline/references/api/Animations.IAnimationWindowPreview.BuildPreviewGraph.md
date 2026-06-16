<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Animations.IAnimationWindowPreview.BuildPreviewGraph.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| graph | The Animation window PlayableGraph. |
| inputPlayable | Current root of the PlayableGraph. |

### Returns

**Playable** Returns the new root of the PlayableGraph.

### Description

Appends custom Playable nodes to the Animation window PlayableGraph.

The Animation window calls this function when it samples an AnimationClip for the first time.
**Note:** This does not support legacy Animation clips.
