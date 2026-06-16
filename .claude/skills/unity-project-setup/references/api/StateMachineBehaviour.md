<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/StateMachineBehaviour.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

StateMachineBehaviour is a component that you add to a state machine state. It is the base class that a script must derive from.

A state machine can have up to three different active states at the same time: the current state, the next state, and the interrupted state.
 A state machine always has a current state. When a state machine transitions to a new state, it adds a next state. When the transition is completed, the current state terminates and the next state becomes the current state.
 If an ongoing transition is interrupted by a transition to a new state, then the next state becomes the interrupted state and the state targeted by the new transition becomes the next state. The current state remains the same until all interrupted transitions are completed. When the last transition is completed and there are no interruptions, the current and interrupted states terminate and the next state becomes the current state.

 StateMachineBehaviour has predefined state-related methods that you can implement:OnStateEnter, OnStateExit, OnStateIK, OnStateMove, OnStateUpdate.
 These methods are invoked for the active states mentioned above in the following order: current state, then interrupted state, then next state.
 Refer to the description of each method for more information.

 StateMachineBehaviour also has predefined methods related to transitions in and out of state machines:
 OnStateMachineEnter and OnStateMachineExit.
 These methods are invoked whenever a state machine transition is taken.

 If an AnimatorController contains sychronized layers, a method might be invoked multiple times for the same state. When this happens, the method is invoked once for each synchronized layer with the state, in ascending order.

 By default the Animator instantiates a new instance of each behaviour defined in the controller. To share behaviour instances, use the SharedBetweenAnimatorsAttribute class attribute to control how behaviours are instantiated.

```csharp
using UnityEngine;public class AttackBehaviour : StateMachineBehaviour
{
    public GameObject particle;
    public float radius;
    public float power;    protected GameObject clone;    override public void OnStateEnter(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    {
        clone = Instantiate(particle, animator.rootPosition, Quaternion.identity) as GameObject;
        Rigidbody rb = clone.GetComponent<Rigidbody>();
        rb.AddExplosionForce(power, animator.rootPosition, radius, 3.0f);
    }    override public void OnStateExit(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    {
        Destroy(clone);
    }    override public void OnStateUpdate(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    {
        Debug.Log("On Attack Update ");
    }    override public void OnStateMove(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    {
        Debug.Log("On Attack Move ");
    }    override public void OnStateIK(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    {
        Debug.Log("On Attack IK ");
    }
}
```

### Public Methods

| Method | Description |
| --- | --- |
| OnStateMachineEnter | Invoked on the first update frame when taking a transition into a state machine. Implement this message to influence the entry transition into the sub-state machine. |
| OnStateMachineExit | Invoked on the last update frame when taking a transition out of a StateMachine. Implement this message to influence the exit transition out of the sub-state machine |

### Messages

| Message | Description |
| --- | --- |
| OnStateEnter | Invoked on the first update frame when a state machine evaluates this state. Implement this message to react to a new state starting. |
| OnStateExit | Invoked on the last update frame when a state machine evaluates this state. Implement this message to react to a state ending. |
| OnStateIK | Invoked during the Animator IK pass. Implement this message to modify the result of the animation after the evaluation of the state machine on a state by state basis. |
| OnStateMove | Invoked during the Animator Root Motion pass. Implement this message to modify the result of the animation root motion on a state by state basis. |
| OnStateUpdate | Invoked on each update frame except for the first and last frame. Implement this message to execute custom logic on a state by state basis. |

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
| CreateInstance | Creates an instance of a scriptable object. |

### Operators

| Operator | Description |
| --- | --- |
| bool | Does the object exist? |
| operator != | Compares if two objects refer to a different object. |
| operator == | Compares two object references to see if they refer to the same object. |

### Messages

| Message | Description |
| --- | --- |
| Awake | Called when an instance of ScriptableObject is created. |
| OnDestroy | This function is called when the scriptable object will be destroyed. |
| OnDisable | This function is called when the scriptable object goes out of scope. |
| OnEnable | This function is called when the object is loaded. |
| OnValidate | Editor-only function that Unity calls when the script is loaded or a value changes in the Inspector. |
| Reset | Reset to default values. |
