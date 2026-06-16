<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Animations.AnimatorState.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Represents a state in a state machine.

Each state contains an (AnimationClip or a BlendTree) which plays while the character is in the state. When a state transition is triggered, the character adopts a new state. The (AnimationClip or BlendTree) for the new state takes over.

The following example illustrates how to create a simple state machine using an editor script. It creates three states, "Idle", "Run", and "Jump", and transitions between them. This example does not set the Motion. You can create a new state with AnimatorController.AddMotion, or you can assign a motion to an existing state using AnimatorState.motion.

```csharp
using UnityEditor;
using UnityEditor.Animations;
using UnityEngine;

static class AnimatorStateExample
{
    [MenuItem("Example/Create Simple State Machine")]
    static void CreateSimpleController()
    {
        // Create the controller
        var controllerPath = AssetDatabase.GenerateUniqueAssetPath("Assets/SimpleController.controller");
        var controller = AnimatorController.CreateAnimatorControllerAtPath(controllerPath);

        var stateMachine = controller.layers[0].stateMachine;

        // Create the states. First state (Idle) becomes the default state
        var idleState = stateMachine.AddState("Idle", new Vector2(300, 200));
        var runState = stateMachine.AddState("Run", new Vector2(150, 350));
        var jumpState = stateMachine.AddState("Jump", new Vector2(450, 350));

        // Create the transition parameters
        controller.AddParameter("Speed", AnimatorControllerParameterType.Float);
        controller.AddParameter("Jump", AnimatorControllerParameterType.Trigger);

        // Create the transitions
        var idleToRun = idleState.AddTransition(runState);
        idleToRun.AddCondition(AnimatorConditionMode.Greater, 0.1f, "Speed");

        var runToIdle = runState.AddTransition(idleState);
        runToIdle.AddCondition(AnimatorConditionMode.Less, 0.1f, "Speed");

        var runToJump = runState.AddTransition(jumpState);
        runToJump.AddCondition(AnimatorConditionMode.If, 0, "Jump");
        runToJump.duration = 0;

        var jumpToRun = jumpState.AddTransition(runState);
        jumpToRun.duration = 0;

        var idleToJump = idleState.AddTransition(jumpState);
        idleToJump.AddCondition(AnimatorConditionMode.If, 0, "Jump");
    }
}
```

Additional resources: AnimatorController.AddMotion, AnimatorStateMachine.AddState, AnimatorStateMachine.states.

### Properties

| Property | Description |
| --- | --- |
| behaviours | The Behaviour list assigned to this state. |
| cycleOffset | Offset at which the animation loop starts. Useful for synchronizing looped animations. Units is normalized time. |
| cycleOffsetParameter | The animator controller parameter that drives the cycle offset value. |
| cycleOffsetParameterActive | Define if the cycle offset value is driven by an Animator controller parameter or by the value set in the editor. |
| iKOnFeet | Should Foot IK be respected for this state. |
| mirror | Whether the animation state is mirrored. |
| mirrorParameter | The animator controller parameter that drives the mirror value. |
| mirrorParameterActive | Define if the mirror value is driven by an Animator controller parameter or by the value set in the editor. |
| motion | The motion assigned to this state. |
| nameHash | The hashed name of the state. |
| speed | The default speed of the motion. |
| speedParameter | The animator controller parameter that drives the speed value. |
| speedParameterActive | Define if the speed value is driven by an Animator controller parameter or by the value set in the editor. |
| tag | A tag can be used to identify a state. |
| timeParameter | If timeParameterActive is true, the value of this Parameter will be used instead of normalized time. |
| timeParameterActive | If true, use value of given Parameter as normalized time. |
| transitions | The transitions that are going out of the state. |
| writeDefaultValues | Whether or not the AnimatorStates writes back the default values for properties that are not animated by its Motion. |

### Public Methods

| Method | Description |
| --- | --- |
| AddExitTransition | Utility function to add an outgoing transition to the exit of the state's parent state machine. |
| AddStateMachineBehaviour | Adds a state machine behaviour class of type T to the AnimatorState. Note that there is no corresponding "Remove" method. To remove a state machine behaviour, use Object.Destroy. |
| AddTransition | Utility function to add an outgoing transition to the destination state. |
| RemoveTransition | Utility function to remove a transition from the state. |

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
