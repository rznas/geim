<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Animations.AnimatorControllerLayer.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Contains a state machine that controls animations of a model or parts of it.

An AnimatorController uses AnimatorControllerLayers to manage and blend multiple animation states. You can add a layer to an AnimatorController in the Animator window or through scripting using AnimatorController.AddLayer. AnimatorController.layers contains the list of layers of an AnimatorController.

```csharp
using UnityEditor;
using UnityEditor.Animations;

// This example demonstrates how to create an AnimatorController that contains an injured layer and a fatigued layer
// by default.
public class AnimatorControllerLayerExample
{
    [MenuItem("Example/AnimatorController with Default Layers")]
    public static void CreateAnimatorControllerWithDefaultLayers()
    {
        // Create an AnimatorController
        var controller = AnimatorController.CreateAnimatorControllerAtPath("Assets/NewControllerWithLayers.controller");

        // Create a new injured layer
        var injuredLayer = new AnimatorControllerLayer
        {
            name = "Injured",
            stateMachine = new AnimatorStateMachine()
        };

        // Add the layer to the controller
        controller.AddLayer(injuredLayer);

        // Create a new fatigued layer
        var fatiguedLayer = new AnimatorControllerLayer
        {
            name = "Fatigued",
            stateMachine = new AnimatorStateMachine()
        };

        // Add the layer to the controller
        controller.AddLayer(fatiguedLayer);

        // Save the controller
        AssetDatabase.SaveAssetIfDirty(controller);
    }
}
```

Additional resources: AnimationLayers manual. AnimatorController.RemoveLayer for removing layers.

### Properties

| Property | Description |
| --- | --- |
| avatarMask | The AvatarMask that is used to mask the animation on the given layer. |
| blendingMode | The blending mode used by the layer. It is not taken into account for the first layer. |
| defaultWeight | The default blending weight that the layers has. It is not taken into account for the first layer. |
| iKPass | When active, the layer will have an IK pass when evaluated. It will trigger an OnAnimatorIK callback. |
| name | The name of the layer. |
| stateMachine | The state machine for the layer. |
| syncedLayerAffectsTiming | When active, the layer will take control of the duration of the Synced Layer. |
| syncedLayerIndex | Specifies the index of the Synced Layer. |

### Public Methods

| Method | Description |
| --- | --- |
| GetOverrideBehaviours | Gets the override behaviour list for the state on the given layer. |
| GetOverrideMotion | Gets the override motion for the state on the given layer. |
| SetOverrideBehaviours | Sets the override behaviour list for the state on the given layer. |
| SetOverrideMotion | Sets the override motion for the state on the given layer. |
