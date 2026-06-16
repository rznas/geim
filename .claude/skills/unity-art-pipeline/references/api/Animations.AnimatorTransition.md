<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Animations.AnimatorTransition.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Transitions define when and how the state machine switch from on state to another. AnimatorTransition always originate from a StateMachine or a StateMachine entry. They do not define timing parameters.

A transition happens when all its conditions are met.

### Constructors

| Constructor | Description |
| --- | --- |
| AnimatorTransition | Creates a new animator transition. |

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
