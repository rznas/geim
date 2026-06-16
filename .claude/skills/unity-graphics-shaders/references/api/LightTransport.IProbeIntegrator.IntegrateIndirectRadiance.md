<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LightTransport.IProbeIntegrator.IntegrateIndirectRadiance.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| context | IDeviceContext for computation and memory operations. |
| positionOffset | Starting index in the probe position buffer. |
| positionCount | Number of probe positions to process. |
| sampleCount | Number of samples to take per probe. |
| ignoreEnvironment | If true, excludes environment lighting from the indirect contribution calculation. |
| radianceEstimateOut | Output BufferSlice that the indirect radiance estimate is written into, encoded as SphericalHarmonicsL2. |

### Returns

**void** Result indicating success or failure with detailed error information.

### Description

Computes indirect lighting contribution at probe positions using spherical sampling and path tracing.

This method performs multi-bounce global illumination calculations by tracing rays from each probe position and accumulating light bounces through the scene. The number of bounces is controlled by the bounce count parameter set in Prepare. Higher sample counts and bounce counts significantly improve quality but increase computation time.

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
integrator.Prepare(context, world, posSlice, 0.1f, 2);// Compute indirect lighting
var indirectResult = integrator.IntegrateIndirectRadiance(context, 0, probeCount, 2048, false, indirectBuffer);// Cleanup
integrator.Dispose();
context.DestroyBuffer(posBuffer);
context.DestroyBuffer(indirectBuffer);
probePositions.Dispose();
```
