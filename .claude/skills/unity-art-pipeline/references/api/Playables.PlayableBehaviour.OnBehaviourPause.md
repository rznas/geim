<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Playables.PlayableBehaviour.OnBehaviourPause.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| playable | The Playable that owns the current PlayableBehaviour. |
| info | A FrameData structure that contains information about the current frame context. |

### Description

This method is invoked when one of the following situations occurs: 

 The effective play state during traversal is changed to PlayState.Paused. This state is indicated by FrameData.effectivePlayState.

 The PlayableGraph is stopped while the playable play state is Playing. This state is indicated by PlayableGraph.IsPlaying returning true.
