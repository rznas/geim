<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LightTransport.InputExtraction.PopulateWorld.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| bakeInput | Scene data extracted using ExtractFromScene. |
| progress | Progress tracking object for monitoring world population status. |
| context | Device context that will be used for light transport calculations. |
| world | World object to populate with the processed scene data. |

### Returns

**bool** True if world population completed successfully, false if errors occurred.

### Description

Converts extracted scene data into optimized data structures for light transport calculations.

This method transforms the raw scene data from BakeInput into optimized data structures suitable for ray tracing and light integration. The process includes:

**Data Processing:**

- Building spatial acceleration structures (BVHs) for fast ray intersection.
- Uploading geometry data to device memory.
- Preprocessing materials and textures.
- Setting up light data structures for efficient queries.

**Device Compatibility:** 
 
The populated world is optimized for the specific device context: - GPU contexts: Data uploaded to GPU memory with optimized layouts. - CPU contexts: Data organized for SIMD processing and cache efficiency.

**Performance Impact:**

This operation can take significant time for complex scenes as it involves: - Geometry preprocessing and optimization. - Memory allocations and data transfers. - Acceleration structure construction. - Shader compilation (on first use).

The populated world can be reused across multiple integrators for efficiency.

```csharp
// Complete workflow: extract scene data and populate world
bool extractResult = InputExtraction.ExtractFromScene(out var bakeInput);
Assert.IsTrue(extractResult, "Scene extraction failed");// Create device context and world
using var context = new RadeonRaysContext();
bool initResult = context.Initialize();
Assert.IsTrue(initResult, "Failed to initialize RadeonRays context");var world = new RadeonRaysWorld();// Set up progress monitoring
using var progress = new BakeProgressState();
progress.SetTotalWorkSteps(1000); // Estimate based on scene complexity// Populate world with extracted data
bool populateResult = InputExtraction.PopulateWorld(bakeInput, progress, context, world);if (!populateResult)
{
    Debug.LogError("Failed to populate world with scene data");
    return;
}// World is now ready for integration operations
var integrator = new RadeonRaysProbeIntegrator();
integrator.Prepare(context, world, probePositions, 0.1f, 2);// Proceed with lighting calculations
var result = integrator.IntegrateDirectRadiance(context, 0, probeCount, 1024, false, outputBuffer);
```
