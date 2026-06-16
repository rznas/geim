<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Animations.IAnimationJob.ProcessAnimation.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| stream | The animation stream to work on. |

### Description

Defines what to do when processing the animation.

This method is called after IAnimationJob.ProcessRootMotion. Depending on Animator.cullingMode, it is possible this method won't be called.
