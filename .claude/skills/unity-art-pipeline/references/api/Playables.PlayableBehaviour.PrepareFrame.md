<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Playables.PlayableBehaviour.PrepareFrame.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| playable | The Playable that owns the current PlayableBehaviour. |
| info | A FrameData structure that contains information about the current frame context. |

### Description

This function is called during the PrepareFrame phase of the PlayableGraph.

PrepareFrame should be used to do topological modifications, change connection weights, time changes , etc.
