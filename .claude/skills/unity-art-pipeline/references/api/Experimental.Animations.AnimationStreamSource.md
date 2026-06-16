<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Experimental.Animations.AnimationStreamSource.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Describes how an AnimationStream is initialized

On every frame, the values in the AnimationStream must be reinitialized. AnimationStreamSource describes which values should be used: the default values as stored in the Animator, or the result of previous inputs.

### Properties

| Property | Description |
| --- | --- |
| DefaultValues | AnimationStream will be initialized with the default values from the Animator. |
| PreviousInputs | AnimationStream will be initialized with the values from the previous AnimationPlayableOutput connected to the same Animator. |
