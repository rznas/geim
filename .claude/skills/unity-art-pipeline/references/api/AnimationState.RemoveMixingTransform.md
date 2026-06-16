<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AnimationState.RemoveMixingTransform.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Removes a transform which should be animated.

You can only pass transforms that have been added through AddMixingTransform function. If transform has been added as `recursive`, then it will be removed as `recursive`. Once you remove all mixing transforms added to animation state all curves become animated again. Additional resources: AddMixingTransform function.
