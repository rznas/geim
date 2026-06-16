<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Animations.AnimatorConditionMode.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Options for specifying the equality or comparison operator to evaluate a condition with.

The mode of a condition corresponds to the operator used to evaluate a condition's parameter. The operator either checks whether the value of the parameter is `true` or `false` (refer to `AnimatorConditionMode.If` and `AnimatorConditionMode.IfNot`), or compares it to a threshold value (for example, `AnimatorConditionMode.Greater`).

Additional resources: AnimatorCondition, AnimatorTransitionBase.AddCondition.

```csharp
// This script creates a state machine for handling the facial animations of characters in some hypothetical game.
// It demonstrates usage of each AnimatorConditionMode value.
// The character is in a neutral state by default. If their mood is high, they are happy. However, they cannot be happy if they are injured.
// If their mood is low, they are sad. At any state, the character can suddenly yawn or hum.

using UnityEditor;
using UnityEditor.Animations;
using UnityEngine;

public static class AnimatorConditionModeExample
{
    [MenuItem("Example/Create Controller Containing Each AnimatorConditionMode Value")]
    static void CreateController()
    {
        AnimatorController controller = new AnimatorController();
        controller.AddLayer("FacialExpression");

        AnimatorState stateNeutral = controller.layers[0].stateMachine.AddState("Neutral");
        AnimatorState stateHappy = controller.layers[0].stateMachine.AddState("Happy");
        AnimatorState stateSad = controller.layers[0].stateMachine.AddState("Sad");
        AnimatorState stateYawn = controller.layers[0].stateMachine.AddState("Yawn");
        AnimatorState stateHum = controller.layers[0].stateMachine.AddState("Hum");

        // Let the Mood parameter have a value within the range of [0, 100],
        // where [0, 35] means feeling sad, [36, 64] means feeling neutral, and [65, 100] means feeling happy.
        controller.AddParameter("Mood", AnimatorControllerParameterType.Int);

        controller.AddParameter("Injured", AnimatorControllerParameterType.Bool);

        // Let the value of SpontaneousExpression correspond to an enum.
        // A value of 1 is expected to mean Yawn, while 2 is expected to mean Hum.
        controller.AddParameter("SpontaneousExpression", AnimatorControllerParameterType.Int);

        AnimatorStateTransition transitionNeutralToHappy = stateNeutral.AddTransition(stateHappy);
        transitionNeutralToHappy.AddCondition(AnimatorConditionMode.Greater, 64, "Mood");
        transitionNeutralToHappy.AddCondition(AnimatorConditionMode.IfNot, 0, "Injured");

        AnimatorStateTransition transitionHappyToNeutral = stateHappy.AddTransition(stateNeutral);
        transitionHappyToNeutral.AddCondition(AnimatorConditionMode.Less, 65, "Mood");

        AnimatorStateTransition transitionHappyToNeutralWhenInjured = stateHappy.AddTransition(stateNeutral);
        transitionHappyToNeutralWhenInjured.AddCondition(AnimatorConditionMode.If, 0, "Injured");

        AnimatorStateTransition transitionNeutralToSad = stateNeutral.AddTransition(stateSad);
        transitionNeutralToSad.AddCondition(AnimatorConditionMode.Less, 36, "Mood");

        AnimatorStateTransition transitionSadToNeutral = stateSad.AddTransition(stateNeutral);
        transitionSadToNeutral.AddCondition(AnimatorConditionMode.Greater, 35, "Mood");

        AnimatorStateTransition transitionAnyToYawn = controller.layers[0].stateMachine.AddAnyStateTransition(stateYawn);
        transitionAnyToYawn.AddCondition(AnimatorConditionMode.Equals, 1, "SpontaneousExpression");

        AnimatorStateTransition transitionYawnToExit = stateYawn.AddExitTransition();
        transitionYawnToExit.AddCondition(AnimatorConditionMode.NotEqual, 1, "SpontaneousExpression");

        AnimatorStateTransition transitionAnyToHum = controller.layers[0].stateMachine.AddAnyStateTransition(stateHum);
        transitionAnyToHum.AddCondition(AnimatorConditionMode.Equals, 2, "SpontaneousExpression");

        AnimatorStateTransition transitionHumToExit = stateHum.AddExitTransition();
        transitionHumToExit.AddCondition(AnimatorConditionMode.NotEqual, 2, "SpontaneousExpression");

        // Setting canTransitionToSelf to false prevents the state machine from endlessly transitioning to the Yawn or Hum state while SpontaneousExpression has a value of 1 or 2.
        transitionAnyToYawn.canTransitionToSelf = false;
        transitionAnyToHum.canTransitionToSelf = false;

        AssetDatabase.CreateAsset(controller, AssetDatabase.GenerateUniqueAssetPath("Assets/FacialExpressionController.controller"));
    }
}
```

### Properties

| Property | Description |
| --- | --- |
| If | The condition is true when the parameter value is true. |
| IfNot | The condition is true when the parameter value is false. |
| Greater | The condition is true when parameter value is greater than the threshold. |
| Less | The condition is true when the parameter value is less than the threshold. |
| Equals | The condition is true when parameter value is equal to the threshold. |
| NotEqual | The condition is true when the parameter value is not equal to the threshold. |
