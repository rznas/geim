<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ModelImporterClipAnimation-loopTime.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Controls whether Unity blends the first and last frames to create smooth time-based looping.

This property specifically handles the temporal aspect of looping by ensuring smooth transitions between the end and beginning of the animation clip.

When enabled, Unity analyzes the first and last frames of the animation and applies blending to eliminate discontinuities in the animation curves over time. This prevents jarring jumps when the animation loops.

This differs from ModelImporterClipAnimation.loop which simply determines whether the clip repeats, and ModelImporterClipAnimation.loopPose which handles pose blending for spatial continuity.

Typically used in combination with `loop = true` for cyclical animations where temporal smoothness is important, such as walk cycles or ambient animations.
