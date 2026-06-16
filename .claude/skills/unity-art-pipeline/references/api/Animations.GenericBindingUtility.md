<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Animations.GenericBindingUtility.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Animation utility functions for reading and writing values from Unity components.

```csharp
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Animations;
using UnityEditor;
using Unity.Collections;
using System.Linq;public class AnimationClipPlayer : MonoBehaviour
{
    public AnimationClip        animationClip;
    public float                time;    List<AnimationCurve>        curves;    NativeArray<BoundProperty>  floatProperties;
    NativeArray<BoundProperty>  intProperties;
    NativeArray<float>          floatValues;
    NativeArray<int>            intValues;    void Start()
    {
        var editorCurveBindings = AnimationUtility.GetCurveBindings(animationClip);
        editorCurveBindings = editorCurveBindings.Where(editorCurveBinding =>
            editorCurveBinding.type != typeof(Transform) && !editorCurveBinding.isPPtrCurve && !editorCurveBinding.isDiscreteCurve
            ).ToArray();        curves = new List<AnimationCurve>(editorCurveBindings.Length);
        for (var i = 0; i < editorCurveBindings.Length; i++)
        {
            curves.Add(AnimationUtility.GetEditorCurve(animationClip, editorCurveBindings[i]));
        }        var genericBindings = new NativeArray<GenericBinding>(AnimationUtility.EditorCurveBindingsToGenericBindings(editorCurveBindings), Allocator.Temp);
        GenericBindingUtility.BindProperties(gameObject, genericBindings, out floatProperties, out intProperties, Allocator.Persistent);        floatValues = new NativeArray<float>(floatProperties.Length, Allocator.Persistent);
        intValues = new NativeArray<int>(intProperties.Length, Allocator.Persistent);
    }    private void OnDestroy()
    {
        floatProperties.Dispose();
        floatValues.Dispose();
        intProperties.Dispose();
        intValues.Dispose();
    }    // Update is called once per frame
    void Update()
    {
        for (int i = 0; i < curves.Count; i++)
        {
            floatValues[i] = curves[i].Evaluate(time);
        }        GenericBindingUtility.SetValues(floatProperties, floatValues);
    }
}
```

### Static Methods

| Method | Description |
| --- | --- |
| BindProperties | Retrieves the list of BoundProperty defined by the list of GenericBinding. |
| CreateGenericBinding | Retrieves the GenericBinding that represents a specific property associated with a GameObject or one of its components. |
| GetAnimatableBindings | Retrieves the animatable bindings for a specific GameObject. |
| GetCurveBindings | Retrieves the curve bindings from an animation clip. |
| GetValues | Retrieves the float or integer value for each [[BoundProperty]. |
| SetValues | Sets the float or integer value for each [[BoundProperty]. |
| UnbindProperties | Unbinds and frees all resources used by a list of BoundProperty. |
