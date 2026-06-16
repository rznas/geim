<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Experimental.Animations.AnimationPlayableOutputExtensions.SetAnimationStreamSource.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| output | The AnimationPlayableOutput instance that calls this method. |
| streamSource | The AnimationStreamSource to apply on this output. |

### Description

Sets the stream source for the specified AnimationPlayableOutput.

When setting the AnimationStreamSource of the output to AnimationStreamSource.DefaultValues, the AnimationStream of this output initalizes every frame with the default values of the Animator.

When setting the AnimationStreamSource of the output to AnimationStreamSource.PreviousInputs, the AnimationStream of this output initalizes every frame with the result of any previously evaluated outputs on the same Animator.

If you use the graph connected to an AnimationPlayableOutput to post-process the result of other Animation graphs connected to the same Animator, you should use AnimationStreamSource.PreviousInputs. For example, if you use the AnimationStream to build an Inverse Kinematics constraint to post-process the built-in AnimatorController, your AnimationPlayableOutput should be set to AnimationStreamSource.PreviousInputs.

In order to start the AnimationStream from a blank slate, you should use AnimationStreamSource.DefaultValues. For example, to build a custom animation source starting from the default pose, the AnimationPlayableOutput should be set to AnimationStreamSource.DefaultValues.

Additional resources: AnimationStreamSource.
