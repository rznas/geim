<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Animations.AnimatorCondition.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Condition that determines if a transition is taken.

Animator conditions represent a comparison between an animator parameter and a threshold value. When a condition is assigned to a transition, the animator evaluates the condition to determine if the transition is taken. When the condition is true, the transition is taken.

A condition is made of three parts: a comparison mode, a parameter name, and a threshold. The parameter is compared to the threshold using the comparison. The parameter is always to the left of the comparison. For example, a condition with a comparison of `Greater` evaluates to `true` if the parameter is greater than the threshold.

Not all parameter types are compatible with every comparison modes. If you attempt to use a parameter type with an incompatible comparison mode, an error occurs. Parameters types and their compatible comparison modes are as follows:

- For float parameters, the `Greater` and `Less` modes are compatible.
- For int parameters, the `Greater`, `Less`, `Equals`, and `NotEquals` modes are compatible.
- For boolean parameters, the `If` and `IfNot` modes are compatible.
- For trigger parameters, the `If` mode is compatible.

Note that when the comparison mode is `If` or `IfNot`, the threshold value is ignored.

The following example adds a menu that creates a state machine in the Editor. It uses animator conditions to control when a transition is taken.

```csharp
using UnityEditor;
using UnityEditor.Animations;
using UnityEngine;

public static class AnimatorConditionExample
{
    [MenuItem("Example/CreateFancyController")]
    static void CreateController()
    {
        AnimatorController controller = new AnimatorController();
        controller.AddLayer("Locomotion");

        AnimatorState stateWalk = controller.layers[0].stateMachine.AddState("Walk");
        AnimatorState stateJump = controller.layers[0].stateMachine.AddState("Jump");
        AnimatorState stateDead = controller.layers[0].stateMachine.AddState("Dead");

        controller.AddParameter("StartJump", AnimatorControllerParameterType.Trigger);
        controller.AddParameter("Health", AnimatorControllerParameterType.Int);

        controller.layers[0].stateMachine.AddEntryTransition(stateWalk);

        // Use the conditions property to get the current conditions or set new ones.
        // Here, the state machine transitions from walk to jump if the StartJump trigger is set.
        // Because this is an If condition mode, you don't have to set a threshold value.
        AnimatorStateTransition transitionWalkToJump = stateWalk.AddTransition(stateJump);
        transitionWalkToJump.conditions = new[] {
            new AnimatorCondition
            {
                mode = AnimatorConditionMode.If,
                parameter = "StartJump",
            }
        };

        // Transition to dead if the healh parameter is below 1
        AnimatorStateTransition transitionWalkToDead = stateWalk.AddTransition(stateDead);
        transitionWalkToDead.conditions = new[]
        {
            new AnimatorCondition
            {
                mode = AnimatorConditionMode.Less,
                parameter = "Health",
                threshold = 1,
            }
        };

        // Consider using AddCondition as a shorthand to add a new AnimatorCondition to the conditions list
        AnimatorStateTransition transitionJumpToDead = stateJump.AddTransition(stateDead);
        transitionJumpToDead.AddCondition(AnimatorConditionMode.Less, 1, "Health");

        // If no conditions are specified, the transition must have an exit time to be valid
        AnimatorStateTransition transitionJumpToWalk = stateJump.AddTransition(stateWalk);
        transitionJumpToWalk.hasExitTime = true;

        AssetDatabase.CreateAsset(controller, AssetDatabase.GenerateUniqueAssetPath("Assets/FancyController.controller"));
    }
}
```

Additional resources: AnimatorStateMachine, AnimatorTransition.

### Properties

| Property | Description |
| --- | --- |
| mode | The equality or comparison operator to evaluate the condition with. |
| parameter | The name of the parameter used in the condition. |
| threshold | The AnimatorParameter's threshold value for the condition to be true. |
