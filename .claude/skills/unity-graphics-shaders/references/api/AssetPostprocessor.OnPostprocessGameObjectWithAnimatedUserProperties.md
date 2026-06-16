<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetPostprocessor.OnPostprocessGameObjectWithAnimatedUserProperties.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| gameObject | The GameObject with animated custom properties. |
| bindings | The animation curves bound to the custom properties. |

### Description

Called when the animation curves for a custom property of type `float` are finished importing.

Called for every GameObject with an animated custom property of type `float`. Each animated property has an animation curve that is represented by an EditorCurveBinding. This lets you dynamically add components to a GameObject and retarget the EditorCurveBindings to any animatable property.

```csharp
using UnityEngine;
using UnityEditor;class MyAllPostprocessor : AssetPostprocessor
{
    // Increment the version number, when the AssetPostprocessors code/behavior is changed
    static readonly uint k_Version = 0;
    public override uint GetVersion() { return k_Version; }    void OnPostprocessGameObjectWithAnimatedUserProperties(GameObject go, EditorCurveBinding[] bindings)
    {
        // add a particle emitter to every game object that has a custom property called "particleAmount"
        // then map the animation to the emission rate
        for (int i = 0; i < bindings.Length; i++)
        {
            if (bindings[i].propertyName == "particlesAmount")
            {
                ParticleSystem emitter = go.AddComponent<ParticleSystem>();
                var emission = emitter.emission;
                emission.rateOverTimeMultiplier = 0;                bindings[i].propertyName = "EmissionModule.rateOverTime.scalar";
                bindings[i].path = AnimationUtility.CalculateTransformPath(go.transform, go.transform.root);
                bindings[i].type = typeof(ParticleSystem);
            }
        }
    }
}
```
