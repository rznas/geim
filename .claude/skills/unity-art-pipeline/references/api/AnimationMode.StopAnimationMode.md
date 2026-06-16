<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AnimationMode.StopAnimationMode.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| driver | An AnimationModeDriver object must be specified if one was specified when the Animation mode was started (StartAnimationMode.) |

### Description

Stops the Animation mode and reverts any properties that were animated while in Animation mode.

When in Animation mode, property animations are stored by calling the AnimationMode.SampleClip or AnimationMode.AddPropertyModification methods. This method, StopAnimationMode, reverts these property animations.
