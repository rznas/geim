<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Animator-applyRootMotion.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Should root motion be applied?

Root motion is the effect where an object's entire mesh moves away from its starting point but that motion is created by the animation itself rather than by changing the Transform position. Note that `applyRootMotion` has no effect when the script implements a MonoBehaviour.OnAnimatorMove function.

Changing the value of applyRootMotion at runtime will re-initialize the animator.
