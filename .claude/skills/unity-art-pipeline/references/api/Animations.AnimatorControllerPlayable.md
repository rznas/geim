<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Animations.AnimatorControllerPlayable.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

An implementation of IPlayable that controls an animation RuntimeAnimatorController.

NOTE: You can use PlayableExtensions methods with AnimatorControllerPlayable objects.

### Static Properties

| Property | Description |
| --- | --- |
| Null | Returns an invalid AnimatorControllerPlayable. |

### Public Methods

| Method | Description |
| --- | --- |
| CrossFade | Creates a crossfade from the current state to any other state using normalized times. |
| CrossFadeInFixedTime | Creates a crossfade from the current state to any other state using times in seconds. |
| GetAnimatorTransitionInfo | Returns an AnimatorTransitionInfo with the informations on the current transition. |
| GetBool | Returns the value of the given boolean parameter. |
| GetCurrentAnimatorClipInfo | Returns an array of all the AnimatorClipInfo in the current state of the given layer. |
| GetCurrentAnimatorClipInfoCount | Returns the number of AnimatorClipInfo in the current state. |
| GetCurrentAnimatorStateInfo | Returns an AnimatorStateInfo with the information on the current state. |
| GetFloat | Returns the value of the given float parameter. |
| GetInteger | Returns the value of the given integer parameter. |
| GetLayerIndex | Returns the index of the layer with the given name. |
| GetLayerName | Returns the layer name. |
| GetLayerWeight | Returns the weight of the layer at the specified index. |
| GetNextAnimatorClipInfo | Returns an array of all the AnimatorClipInfo in the next state of the given layer. |
| GetNextAnimatorClipInfoCount | Returns the number of AnimatorClipInfo in the next state. |
| GetNextAnimatorStateInfo | Returns an AnimatorStateInfo with the information on the next state. |
| GetParameter | See AnimatorController.parameters. |
| HasState | Returns true if the state exists in this layer, false otherwise. |
| IsInTransition | Returns true if there is a transition on the given layer, false otherwise. |
| IsParameterControlledByCurve | Returns true if the parameter is controlled by a curve, false otherwise. |
| Play | Plays a state. |
| PlayInFixedTime | Plays a state. |
| ResetControllerState | Resets the AnimatorController to its default state. |
| ResetTrigger | Resets the value of the given trigger parameter. |
| SetBool | Sets the value of the given boolean parameter. |
| SetFloat | Send float values to the AnimatorController to affect transitions. |
| SetInteger | Sets the value of the given integer parameter. |
| SetLayerWeight | Sets the weight of the layer at the given index. |
| SetTrigger | Sets the value of the given trigger parameter. |

### Static Methods

| Method | Description |
| --- | --- |
| Create | Creates an AnimatorControllerPlayable in the PlayableGraph. |
