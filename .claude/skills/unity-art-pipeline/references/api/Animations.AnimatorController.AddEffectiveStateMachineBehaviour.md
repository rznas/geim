<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Animations.AnimatorController.AddEffectiveStateMachineBehaviour.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| state | The AnimatorState to add the Behaviour to. |
| layerIndex | The layer index. |

### Description

Adds a state machine behaviour class of a specific type to the AnimatorState for layer layerIndex. This method should be used when you are dealing with synchronized layer and would like to add a state machine behaviour on a synchronized layer. Note that there is no corresponding "Remove" method. To remove a state machine behaviour, use Object.Destroy.

### Parameters

| Parameter | Description |
| --- | --- |
| stateMachineBehaviourType | The type of state machine behaviour to add. |
| state | The AnimatorState to add the Behaviour to. |
| layerIndex | The layer index. |

### Description

The non-generic version of this method.
