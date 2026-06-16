<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LightTransport.IProbeIntegrator.IntegrateDirectRadiance.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| context | Device context for computation and memory operations. |
| positionOffset | Starting index in the probe position buffer. |
| positionCount | Number of probe positions to process. |
| sampleCount | Number of samples to take per probe. |
| ignoreEnvironment | If true, excludes environment lighting from the direct contribution calculation. |
| radianceEstimateOut | Output BufferSlice that the direct radiance estimate is written into, encoded as SphericalHarmonicsL2. |

### Returns

**void** Result indicating success or failure with detailed error information.

### Description

Computes direct lighting contribution at probe positions using spherical sampling.

This method performs spherical sampling around each probe position to compute direct lighting contributions from all light sources in the scene. The results are stored as SphericalHarmonicsL2 that can be used for real-time lighting lookups.

Direct radiance includes contributions from:

- Directional lights
- Point lights
- Spot lights
- Area lights
- Environment lighting (unless ignored)

The quality of the integration depends on the sample count - higher values produce more accurate results but require more computation time.

```csharp
// Extract scene data
bool result = InputExtraction.ExtractFromScene(out var input);
Assert.IsTrue(result);// Create context and world
using var context = new RadeonRaysContext();
Assert.IsTrue(context.Initialize());
var world = new RadeonRaysWorld();// Populate world with scene data
using var progress = new BakeProgressState();
var worldResult = InputExtraction.PopulateWorld(input, progress, context, world);
Assert.IsTrue(worldResult);// Create integrator
var integrator = new RadeonRaysProbeIntegrator();
integrator.SetProgressReporter(progress);// Prepare probe positions
var probePositions = new NativeArray<Vector3>(64, Allocator.Persistent);
// ... fill probe positions ...BufferID posBuffer = context.CreateBuffer(64, 12); // Vector3 = 12 bytes
var posSlice = new BufferSlice<Vector3>(posBuffer, 0);
context.WriteBuffer(posSlice, probePositions);// Prepare integrator.
integrator.Prepare(context, world, posSlice, 0.1f, 2);// Integrate direct lighting
var result = integrator.IntegrateDirectRadiance(
    context,
    0,        // Start from first probe
    32,       // Process 32 probes
    64,       // Faster, low quality sampling, usually okay for final bake if area lights are not used.
    false,    // Include environment lighting
    shBuffer
);if (result.type != IProbeIntegrator.ResultType.Success)
{
    Debug.LogError($"Direct radiance integration failed: {result}");
}
// Cleanup
integrator.Dispose();
context.DestroyBuffer(posBuffer);
context.DestroyBuffer(shBuffer);
probePositions.Dispose();
```
