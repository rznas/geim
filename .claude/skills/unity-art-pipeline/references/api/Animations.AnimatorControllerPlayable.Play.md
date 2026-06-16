<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Animations.AnimatorControllerPlayable.Play.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| stateName | The state name. |
| stateNameHash | The state hash name. If stateNameHash is 0, it changes the current state time. |
| layer | The layer index. If layer is -1, it plays the first state with the given state name or hash. |
| normalizedTime | The time offset between zero and one. |

### Description

Plays a state.

When you specify a state name, or the string used to generate a hash, it should include the name of the parent layer. For example, if you have a `Run` state in the `Base Layer`, the name is `Base Layer.Run`. The `normalizedTime` parameter varies between 0 and 1. If this parameter is left at zero then Play will operate as expected. A different starting point can be given. An example could be `normalizedTime` set to 0.5, which means the animation starts half way through. If the transition from one state switches to another it may or may not be blended. If the transition starts at 0.75 it will be blended with the other state. If no transition is set up then Play will continue to 1.0 with no changes.
