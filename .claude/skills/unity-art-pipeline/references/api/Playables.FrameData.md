<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Playables.FrameData.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

This structure contains the frame information a Playable receives in Playable.PrepareFrame.

### Properties

| Property | Description |
| --- | --- |
| deltaTime | The interval between this frame and the preceding frame. The interval is unscaled and expressed in seconds. |
| effectiveParentSpeed | The accumulated speed of the parent Playable during the PlayableGraph traversal. |
| effectivePlayState | The accumulated play state of this playable. |
| effectiveSpeed | The accumulated speed of the Playable during the PlayableGraph traversal. |
| effectiveWeight | The accumulated weight of the Playable during the PlayableGraph traversal. |
| evaluationType | Indicates the type of evaluation that caused PlayableGraph.PrepareFrame to be called. |
| frameId | The current frame identifier. |
| output | The PlayableOutput that initiated this graph traversal. |
| seekOccurred | Indicates that the local time was explicitly set. |
| timeHeld | Indicates the local time did not advance because it has reached the duration and the extrapolation mode is set to Hold. |
| timeLooped | Indicates the local time wrapped because it has reached the duration and the extrapolation mode is set to Loop. |
| weight | The weight of the current Playable. |
