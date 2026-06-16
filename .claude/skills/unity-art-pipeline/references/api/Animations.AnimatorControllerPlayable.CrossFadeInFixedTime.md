<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Animations.AnimatorControllerPlayable.CrossFadeInFixedTime.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| stateName | The name of the state. |
| stateHashName | The hash name of the state. |
| fixedTransitionDuration | The duration of the transition (in seconds). |
| layer | The layer where the crossfade occurs. |
| fixedTimeOffset | The time of the state (in seconds). |
| normalizedTransitionTime | The time of the transition (normalized). |

### Description

Creates a crossfade from the current state to any other state using times in seconds.

When you specify a state name, or the string used to generate a hash, it should include the name of the parent layer. For example, if you have a `Run` state in the `Base Layer`, the name is `Base Layer.Run`.

Additional resources: AnimatorControllerPlayable.CrossFade for normalized times.
