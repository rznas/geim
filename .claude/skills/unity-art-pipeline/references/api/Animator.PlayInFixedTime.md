<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Animator.PlayInFixedTime.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| stateName | The state name. |
| stateNameHash | The state hash name. If stateNameHash is 0, it changes the current state time. |
| layer | The layer index. If layer is -1, it plays the first state with the given state name or hash. |
| fixedTime | The time offset (in seconds). |

### Description

Plays a state.

When you specify a state name, or the string used to generate a hash, it should include the name of the parent layer. For example, if you have a `Run` state in the `Base Layer`, the name is `Base Layer.Run`. When you use the `stateName` parameter, this method calls Animator.StringToHash internally. If you use this method with the same `stateName` often, precompute the hash and use the `stateHashName` parameter to improve performance.

Additional resources: Animator.StringToHash for how to get a hash from the name.
