<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Animations.AnimatorStateMachine.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A graph controlling the interaction of states. Each state references a motion.

### Properties

| Property | Description |
| --- | --- |
| anyStatePosition | The position of the AnyState node. |
| anyStateTransitions | The list of AnyState transitions. |
| behaviours | The Behaviour list assigned to this state machine. |
| defaultState | The state that the state machine will be in when it starts. |
| entryPosition | The position of the entry node. |
| entryTransitions | The list of entry transitions in the state machine. |
| exitPosition | The position of the exit node. |
| parentStateMachinePosition | The position of the parent state machine node. Only valid when in a hierachic state machine. |
| stateMachines | The list of sub state machines. |
| states | The list of states. |

### Public Methods

| Method | Description |
| --- | --- |
| AddAnyStateTransition | Utility function to add an AnyState transition to the specified state or statemachine. |
| AddEntryTransition | Utility function to add an incoming transition to the exit of it's parent state machine. |
| AddState | Utility function to add a state to the state machine. |
| AddStateMachine | Utility function to add a state machine to the state machine. |
| AddStateMachineBehaviour | Adds a state machine behaviour class of type T to the AnimatorStateMachine. Note that there is no corresponding "Remove" method. To remove a state machine behaviour, use Object.Destroy. |
| AddStateMachineExitTransition | Utility function to add an outgoing transition from the source state machine to the exit of it's parent state machine. |
| AddStateMachineTransition | Utility function to add an outgoing transition from the source state machine to the destination. |
| GetStateMachineTransitions | Gets the list of all outgoing state machine transitions from given state machine. |
| MakeUniqueStateMachineName | Makes a unique state machine name in the context of the parent state machine. |
| MakeUniqueStateName | Makes a unique state name in the context of the parent state machine. |
| RemoveAnyStateTransition | Utility function to remove an AnyState transition from the state machine. |
| RemoveEntryTransition | Utility function to remove an entry transition from the state machine. |
| RemoveState | Utility function to remove a state from the state machine. |
| RemoveStateMachine | Utility function to remove a state machine from its parent state machine. |
| RemoveStateMachineTransition | Utility function to remove an outgoing transition from source state machine. |
| SetStateMachineTransitions | Sets the list of all outgoing state machine transitions from given state machine. |

### Inherited Members

### Properties

| Property | Description |
| --- | --- |
| hideFlags | Should the object be hidden, saved with the Scene or modifiable by the user? |
| name | The name of the object. |

### Public Methods

| Method | Description |
| --- | --- |
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
