<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LightTransport.IWorld.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Interface for integration world data structures used by light transport calculations.

This interface provides an abstraction for world space data structures used by integrators, such as acceleration structures, lookup tables, and other optimized data that can be shared between different integration operations.

The IWorld interface enables: - Scene geometry and material data storage. - Spatial acceleration structures for efficient ray tracing. - Light source data storage and acceleration structures for efficient lookups. - Shared data structures across multiple integration passes.

Unity provides a concrete implementation of this interface: - UnityEngine.LightTransport.RadeonRaysWorld for GPU-accelerated operations using OpenCL 1.2.

World objects are populated using InputExtraction.PopulateWorld and consumed by IProbeIntegrator implementations.

```csharp
// Extract scene data for baking.
bool extractResult = InputExtraction.ExtractFromScene(out var bakeInput);
Assert.IsTrue(extractResult);// Create context and world for GPU acceleration.
using var context = new RadeonRaysContext();
Assert.IsTrue(context.Initialize());
var world = new RadeonRaysWorld();// Populate world with scene data.
using var progress = new BakeProgressState();
bool populateResult = InputExtraction.PopulateWorld(bakeInput, progress, context, world);
Assert.IsTrue(populateResult);// Use world with multiple integrators.
var directIntegrator = new RadeonRaysProbeIntegrator();
var indirectIntegrator = new RadeonRaysProbeIntegrator();// Both integrators can share the same world data.
directIntegrator.Prepare(context, world, probePositions, 0.5f, 1);
indirectIntegrator.Prepare(context, world, probePositions, 0.1f, 3);// Perform light integration passes
var directResult = directIntegrator.IntegrateDirectRadiance(context, 0, probeCount, 256, false, directBuffer);
var indirectResult = indirectIntegrator.IntegrateIndirectRadiance(context, 0, probeCount, 2048, false, indirectBuffer);// Clean up
world.Dispose();
```
