<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Experimental.Animations.AnimationStreamSource.PreviousInputs.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

AnimationStream will be initialized with the values from the previous AnimationPlayableOutput connected to the same Animator.

Before it is modified during IAnimationJob.ProcessAnimation or IAnimationJob.ProcessRootMotion, the AnimationStream contains the values written by any previous inputs.

Additional resources: AnimationPlayableOutputExtensions.SetAnimationStreamSource.
