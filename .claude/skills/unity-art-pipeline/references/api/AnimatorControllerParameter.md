<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AnimatorControllerParameter.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Used to communicate between scripting and an AnimatorController.

You can add an AnimatorControllerParameter to an AnimatorController in the Animator window or with the function AnimatorController.AddParameter in script. At runtime, use the following functions to set the value of a parameter in the Animator:

- Animator.SetBool
- Animator.SetFloat
- Animator.SetInteger
- Animator.SetTrigger

You can also set parameter values in the Animation window based on Animation Curves in Animation Clips.

```csharp
using UnityEditor;
using UnityEditor.Animations;
using UnityEngine;

// This example demonstrates how to create an AnimatorController with some default parameters.
public static class AnimatorControllerParameterExample
{
    [MenuItem("Example/Create Animator Controller With Default Parameters")]
    public static void CreateAnimatorControllerWithDefaultParameters()
    {
        // Create a new AnimatorController.
        var controller = AnimatorController.CreateAnimatorControllerAtPath("Assets/NewControllerWithParameters.controller");

        // Add a new parameter to the controller.
        var speedParameter = new AnimatorControllerParameter
        {
            name = "Speed",
            type = AnimatorControllerParameterType.Float
        };
        controller.AddParameter(speedParameter);

        // Add another parameter to the controller with a default value.
        var isGroundedParameter = new AnimatorControllerParameter
        {
            name = "IsGrounded",
            type = AnimatorControllerParameterType.Bool,
            defaultBool = true
        };
        controller.AddParameter(isGroundedParameter);

        // Save the controller.
        AssetDatabase.SaveAssetIfDirty(controller);
    }
}
```

Additional resources: AnimationParameters manual. AnimatorController.RemoveParameter for removing parameters. AnimatorController.parameters for accessing the list of parameters.

### Properties

| Property | Description |
| --- | --- |
| defaultBool | The default bool value for the parameter. |
| defaultFloat | The default float value for the parameter. |
| defaultInt | The default int value for the parameter. |
| name | The name of the parameter. |
| nameHash | Returns the hash of the parameter based on its name. |
| type | The type of the parameter. |
