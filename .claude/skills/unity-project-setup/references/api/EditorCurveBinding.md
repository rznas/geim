<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorCurveBinding.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Identifies an animatable property on a Component or GameObject.

The AnimationWindow uses editor curve binding to identify animation properties. This makes clip authoring possible.

You can use this binding to get, set or replace a curve in an AnimationClip when clip authoring. To do this, use the AnimationUtility.GetCurveBindings and AnimationUtility.GetObjectReferenceCurveBindings methods to retrieve the array of the animated bindings for an AnimationClip. For a single property, use AnimationUtility.GetEditorCurve or AnimationUtility.GetObjectReferenceCurve to retrieve the curve identified by the editor curve binding of an AnimationClip. Use the AnimationUtility.SetEditorCurve or AnimationUtility.SetObjectReferenceCurve to set the curve. When recording live animation with the GameObjectRecorder, use the GameObjectRecorder.Bind method to bind a GameObject property identified by an editor curve binding.

Additional resources: AnimationUtility GameObjectRecorder.

```csharp
using UnityEditor;
using UnityEngine;

public static class EditorCurveBindingExample
{
    // Change these values to match the prefix you want to remove and add.
    // For example, properties with paths "", "Hips", "Hips/LeftLeg",
    // are moved to "Root", "Root/Hips", "Root/Hips/LeftLeg".
    private const string k_PrefixToRemove = "";
    private const string k_PrefixToAdd = "Root";

    // This example moves the animated properties parented to `prefixToRemove` to
    // new properties parented to `prefixToAdd` on a selected animation clip.
    [MenuItem("Example/Reparent Animated Properties On Selected Animation Clip")]
    static void ReparentAnimatedPropertiesOnSelectedAnimationClip()
    {
        var clip = Selection.activeObject as AnimationClip;
        if (clip == null)
        {
            Debug.LogError("No animation clip selected.");
            return;
        }

        var clipBindings = AnimationUtility.GetCurveBindings(clip);

        foreach (var binding in clipBindings)
        {
            if (binding.path.StartsWith(k_PrefixToRemove))
            {
                var newBinding = binding;
                newBinding.path = binding.path.Substring(k_PrefixToRemove.Length);
                if (newBinding.path.StartsWith('/'))
                    newBinding.path = newBinding.path.Substring(1);

                if (string.IsNullOrEmpty(newBinding.path))
                    newBinding.path = k_PrefixToAdd;
                else if (!string.IsNullOrEmpty(k_PrefixToAdd))
                    newBinding.path = k_PrefixToAdd + "/" + newBinding.path;

                var curve = AnimationUtility.GetEditorCurve(clip, binding);

                // You rename curves by removing the old curve and adding a new one
                // with a new binding. You can also use the
                // AnimationUtility.SetEditorCurves method to set multiple curves at once.
                AnimationUtility.SetEditorCurve(clip, binding, null);
                AnimationUtility.SetEditorCurve(clip, newBinding, curve);
            }
        }

        AssetDatabase.SaveAssetIfDirty(clip);
    }
}
```

### Properties

| Property | Description |
| --- | --- |
| isDiscreteCurve | Returns true if the binding is a discrete curve. Returns false otherwise. (Read Only) |
| isPPtrCurve | Returns true if the binding is an object curve. Returns false otherwise (Read Only) |
| isSerializeReferenceCurve | Returns true if the binding is to a curve that points to field on a SerializeReference instance. Returns false otherwise. (Read Only) |
| path | The transform path of the object that is animated. |
| propertyName | The name of the property to be animated. |
| type | The type of the property to be animated. |

### Static Methods

| Method | Description |
| --- | --- |
| DiscreteCurve | Creates a preconfigured binding for a curve where values should not be interpolated. |
| FloatCurve | Creates a preconfigured binding for a float curve. |
| PPtrCurve | Creates a preconfigured binding for a curve that points to an Object. |
| SerializeReferenceCurve | Creates a preconfigured binding for a curve that points to a SerializeReference instance field. |
