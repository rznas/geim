<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Playables.AnimationPlayableUtilities.PlayAnimatorController.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| animator | Target Animator. |
| controller | The RuntimeAnimatorController to create an AnimatorControllerPlayable for. |
| graph | The created PlayableGraph. |

### Returns

**AnimatorControllerPlayable** A handle to the newly-created AnimatorControllerPlayable.

### Description

Creates a PlayableGraph to be played on the given Animator. An AnimatorControllerPlayable is also created for the given RuntimeAnimatorController.
