<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LightTransport.IProbeIntegrator.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Interface for light probe integration operations, typically used for global illumination baking.

The IProbeIntegrator interface provides methods for computing various lighting contributions at light probe positions, including direct radiance, indirect radiance, occlusion, and validity. These operations are essential for baking light probes in Unity's lighting system.

Unity provides a concrete implementation of this interface:

- UnityEngine.LightTransport.RadeonRaysProbeIntegrator for GPU-accelerated integration using OpenCL 1.2.

The integrator operates on light probe positions and encodes lighting results as SphericalHarmonicsL2. For mixed lighting scenarios Unity can integrate occlusion values.

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
context.WriteBuffer(posSlice, probePositions);// Prepare integrator
integrator.Prepare(context, world, posSlice, 0.1f, 2);// Create output buffer for direct and indirect radiance encoded as L2 spherical harmonics.
BufferID shBuffer = context.CreateBuffer(64, 108); // SHL2 = 108 bytes
var shSlice = new BufferSlice<SphericalHarmonicsL2>(shBuffer, 0);
BufferID shBufferIndirect = context.CreateBuffer(64, 108); // SHL2 = 108 bytes
var shSliceIndirect = new BufferSlice<SphericalHarmonicsL2>(shBuffer, 0);// Integrate direct lighting
var directResult = integrator.IntegrateDirectRadiance(context, 0, 64, 128, false, shSlice);
Assert.AreEqual(IProbeIntegrator.ResultType.Success, directResult.type);// Integrate indirect lighting
var indirectResult = integrator.IntegrateIndirectRadiance(context, 0, 64, 2048, false, shSliceIndirect);
Assert.AreEqual(IProbeIntegrator.ResultType.Success, indirectResult.type);// Combine direct and indirect results if needed using the IProbePostProcessor interface.// Cleanup
integrator.Dispose();
context.DestroyBuffer(posBuffer);
context.DestroyBuffer(shBuffer);
context.DestroyBuffer(shBufferIndirect);
probePositions.Dispose();
```

### Public Methods

| Method | Description |
| --- | --- |
| IntegrateDirectRadiance | Computes direct lighting contribution at probe positions using spherical sampling. |
| IntegrateIndirectRadiance | Computes indirect lighting contribution at probe positions using spherical sampling and path tracing. |
| IntegrateOcclusion | Computes occlusion values for mixed lighting scenarios with shadowmask support. |
| IntegrateValidity | Computes validity factors indicating the reliability of each probe position. |
| Prepare | Initializes the probe integrator with scene data and integration parameters. |
| SetProgressReporter | Configures progress tracking for integration operations. |
