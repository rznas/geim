<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AnimatorCullingMode.CullUpdateTransforms.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Retarget, IK and write of Transforms are disabled when renderers are not visible.

The statemachine and root motion will always be evaluated. Thus you will always receive the OnAnimatorMove callbacks. All other animation will be skipped if the character is not visible. Specifically evaluation of bone animation, IK, OnAnimatorIK will be skipped.

Note that animation will still be visible in the Scene view, ie it is not affected by animation culling.
