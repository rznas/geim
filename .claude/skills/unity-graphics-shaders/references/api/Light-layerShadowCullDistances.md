<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Light-layerShadowCullDistances.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Per-light, per-layer shadow culling distances. Directional lights only.

Dynamic shadows can be cast into view from shadow casters that are very far away from the camera. At low incident light angles, this can lead to a lot of objects needing to cast dynamic shadows, which in turn can result in high rendering costs during shadow maps generation.

Using Light.layerShadowCullDistances lets you limit, on a per-layer basis, how far from the camera shadows casters are allowed to be before they get culled from shadow maps generation. The feature complements Camera.layerCullDistances, but only affects shadow casting, not regular object rendering.

Just like Camera.layerCullDistances, Light.layerShadowCullDistances requires that you assign a float array of exactly 32 values. A distance of 0 in a layer's index means keep current behaviour for that layer. Assigning null completely disables shadow distance culling, and is effectively the same as passing an array of 32 zeros.

By default, per-layer shadow culling will use a plane aligned with the camera. You can change this to a sphere by setting Camera.layerCullSpherical to true. The effect of this flag is shared by both Camera.layerCullDistances and Light.layerShadowCullDistances.

Please be aware that when you restrict camera culling distances using Camera.layerCullDistances, this also restricts shadow casting to those same culling distances. As a result, if you use Camera.layerCullDistances and Light.layerShadowCullDistances at the same time *for the same layer index*, the effective shadow culling distance for that layer will be the smallest of those two distances. For layer indices where one of the values are zero, the other value gets used directly, and for layer indices where both values are zero, no special culling behaviour gets applied for that layer.

Only works with LightType.Directional lights.

See Also: Camera.layerCullDistances, Camera.layerCullSpherical

```csharp
using UnityEngine;[RequireComponent(typeof(Light))]
public class LayerShadowCullDistancesExample : MonoBehaviour
{
    void OnEnable()
    {
        // Setup shadow cull distances
        var shadowCullDistances = new float[32];
        shadowCullDistances[10] = 5f;   // Let's imagine this is our 'Tiny Objects' layer
        shadowCullDistances[11] = 15f;  // Let's imagine this is our 'Small Things' layer
        shadowCullDistances[12] = 100f; // Let's imagine this is our 'Trees' layer        // Assign shadow cull distances. This will only affect layers 10, 11 and 12.
        GetComponent<Light>().layerShadowCullDistances = shadowCullDistances;
    }    void OnDisable()
    {
        // Completely disable shadow cull distances
        GetComponent<Light>().layerShadowCullDistances = null;
    }
}
```
