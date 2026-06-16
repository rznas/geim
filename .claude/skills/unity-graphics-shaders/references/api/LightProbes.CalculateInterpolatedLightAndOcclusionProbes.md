<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LightProbes.CalculateInterpolatedLightAndOcclusionProbes.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| positions | The array of world space positions used to evaluate the probes. |
| lightProbes | The array where the resulting light probes are written to. |
| occlusionProbes | The array where the resulting occlusion probes are written to. |

### Description

Calculate light probes and occlusion probes at the given world space positions.

If there are no probes baked in the Scene, the ambient probe will be written to the `lightProbes` array and `Vector4` (1,1,1,1) will be written to the `occlusionProbes` array. 
 ArgumentNullException is thrown if `positions` is `null`.
 You can omit either `lightProbes` or `occlusionProbes` array by passing `null` to the function, but you cannot omit both at the same time. If both arrays are omitted, an ArgumentException is thrown. `lightProbes` and `occlusionProbes` should be calculated together for better performance.
 For the overload which takes arrays as arguments, the `lightProbes` and `occlusionProbes` must have at least the same number of elements as the `positions` array.
 For the overload which takes lists as arguments, the output lists will be resized to fit the size of the `positions` array if there is not enough space in the given lists.
 The returned probes may be further used for instanced rendering by copying them to a MaterialPropertyBlock object via MaterialPropertyBlock.CopySHCoefficientArraysFrom and MaterialPropertyBlock.CopyProbeOcclusionArrayFrom.

```csharp
using UnityEngine;// This script uses OnPreCull for the rendering. It is mandatory to put the script to a Camera object.
// Make sure light probes are placed and baked in the Scene.
// Use Shadowmask mode and mixed lights to see occlusion probes approximating shadowness.
[RequireComponent(typeof(Camera))]
public class Simple : MonoBehaviour
{
    public Material material;    private Matrix4x4[] transforms;
    private MaterialPropertyBlock properties;
    private Mesh cubeMesh;    void Start()
    {
        const int kCount = 100;        // Generate 100 random positions
        var positions = new Vector3[kCount];
        for (int i = 0; i < kCount; ++i)
            positions[i] = new Vector3(Random.Range(-20.0f, 20.0f), Random.Range(-20.0f, 20.0f), Random.Range(-20.0f, 20.0f));        // Calculate probes at these positions
        var lightprobes = new UnityEngine.Rendering.SphericalHarmonicsL2[kCount];
        var occlusionprobes = new Vector4[kCount];
        LightProbes.CalculateInterpolatedLightAndOcclusionProbes(positions, lightprobes, occlusionprobes);        // Put them into the MPB
        properties = new MaterialPropertyBlock();
        properties.CopySHCoefficientArraysFrom(lightprobes);
        properties.CopyProbeOcclusionArrayFrom(occlusionprobes);        // Compute the transforms list
        transforms = new Matrix4x4[kCount];
        for (int i = 0; i < kCount; ++i)
            transforms[i] = Matrix4x4.Translate(positions[i]);        // Create the cube mesh
        cubeMesh = GameObject.CreatePrimitive(PrimitiveType.Cube).GetComponent<MeshFilter>().sharedMesh;        // Make sure the material property is assigned
        if (material == null || !material.enableInstancing)
            Debug.LogError("material must be assigned with one with instancing enabled.");
    }    // OnPreCull happens before every culling, which is the perfect timing to inject DrawMesh* function calls.
    void OnPreCull()
    {
        if (material != null && material.enableInstancing)
        {
            RenderParams rp = new RenderParams(material)
            {
                matProps = properties,
                lightProbeUsage = UnityEngine.Rendering.LightProbeUsage.CustomProvided, // enable instancing for probes
                shadowCastingMode = UnityEngine.Rendering.ShadowCastingMode.On,
                receiveShadows = true
            };
            Graphics.RenderMeshInstanced(rp, cubeMesh, 0, transforms);
        }
    }
}
```

The example demonstrates how to leverage the baked light probes to enhance the visual quality of instanced rendering.
