<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Animations.AnimatorStateTransition.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Transitions define when and how the state machine switch from one state to another. AnimatorStateTransition always originate from an Animator State (or AnyState) and have timing parameters.

A transition happens when all its conditions are met. AnimatorStateTransition derives from AnimatorTransitionBase.

### Properties

| Property | Description |
| --- | --- |
| canTransitionToSelf | Set to true to allow or disallow transition to self during AnyState transition. |
| duration | The duration of the transition. |
| exitTime | If AnimatorStateTransition.hasExitTime is true, exitTime represents the exact time at which the transition can take effect. This is represented in normalized time, so for example an exit time of 0.75 means that on the first frame where 75% of the animation has played, the Exit Time condition will be true. On the next frame, the condition will be false. For looped animations, transitions with exit times smaller than 1 will be evaluated every loop, so you can use this to time your transition with the proper timing in the animation, every loop. Transitions with exit times greater than one will be evaluated only once, so they can be used to exit at a specific time, after a fixed number of loops. For example, a transition with an exit time of 3.5 will be evaluated once, after three and a half loops. |
| hasExitTime | When active the transition will have an exit time condition. |
| hasFixedDuration | Determines whether the duration of the transition is reported in a fixed duration in seconds or as a normalized time. |
| interruptionSource | Which AnimatorState transitions can interrupt the Transition. |
| offset | The time at which the destination state will start. |
| orderedInterruption | The Transition can be interrupted by a transition that has a higher priority. |

### Constructors

| Constructor | Description |
| --- | --- |
| AnimatorStateTransition | Creates a new animator state transition. |

### Inherited Members

### Properties

| Property | Description |
| --- | --- |
| conditions | AnimatorCondition conditions that need to be met for a transition to happen. |
| destinationState | The destination state of the transition. |
| destinationStateMachine | The destination state machine of the transition. |
| isExit | Is the transition destination the exit of the current state machine. |
| mute | Mutes the transition. The transition will never occur. |
| solo | Mutes all other transitions in the source state. |
| hideFlags | Should the object be hidden, saved with the Scene or modifiable by the user? |
| name | The name of the object. |

### Public Methods

| Method | Description |
| --- | --- |
| AddCondition | Utility function to add a condition to a transition. |
| RemoveCondition | Utility function to remove a condition from the transition. |
| GetEntityId | Gets the EntityId of the object. |
| ToString | Returns the name of the object. |

### Static Methods

| Method | Description |
| --- | --- |
| Destroy | Removes a GameObject, component, or asset. |
| DestroyImmediate | Destroys the specified object immediately. Use with caution and in Edit mode only. |
| DontDestroyOnLoad | Do not destroy the target Object when loading a new Scene. |
| FindAnyObjectByType | Retrieves any active loaded object of Type type. |
| FindObjectsByType | Retrieves a list of all loaded objects of Type type. |
| Instantiate | Clones the object original and returns the clone. |
| InstantiateAsync | Captures a snapshot of the original object (that must be related to some GameObject) and returns the AsyncInstantiateOperation. |

### Operators

| Operator | Description |
| --- | --- |
| bool | Does the object exist? |
| operator != | Compares if two objects refer to a different object. |
| operator == | Compares two object references to see if they refer to the same object. |
