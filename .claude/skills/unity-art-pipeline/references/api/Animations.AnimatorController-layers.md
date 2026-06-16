<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Animations.AnimatorController-layers.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The layers in the controller.

It's important to note that the AnimatorControllerLayer are returned as a copy. The array should be set back into the property when changed.

```csharp
class ControllerModifier
{
    UnityEditor.Animations.AnimatorController controller;    public void ModifyLayers(int layerIndex, string newName)
    {
        UnityEditor.Animations.AnimatorControllerLayer[] layers = controller.layers;
        layers[layerIndex].name = newName;
        controller.layers = layers;
    }
}
```
