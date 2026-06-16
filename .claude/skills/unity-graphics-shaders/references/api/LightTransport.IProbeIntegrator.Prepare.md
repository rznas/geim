<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LightTransport.IProbeIntegrator.Prepare.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| context | IDeviceContext for computation and memory operations. |
| world | World object containing the scene geometry and other input data. |
| positions | BufferSlice containing the 3D positions of the light probes to be integrated. |
| pushoff | Distance to offset rays from probe positions to avoid self-intersection artifacts. |
| bounceCount | Maximum number of light bounces for indirect lighting calculations. |

### Description

Initializes the probe integrator with scene data and integration parameters.

This method must be called before any integration operations. It prepares internal data structures, compiles shaders if necessary, and sets up the integration parameters.

The preparation phase can be time-intensive for large scenes as it may involve:

- Building acceleration structures.
- Compiling compute shaders for the target device.
- Preprocessing scene geometry and materials.
- Setting up light data structures.

The pushoff parameter helps prevent ray self-intersections when probes are placed very close to surfaces.

```csharp
// Create probe positions buffer
var probePositions = new NativeArray<Vector3>(numProbes, Allocator.Persistent);
// ... populate positions ...BufferID posBuffer = context.CreateBuffer((ulong)numProbes, 12);
var posSlice = new BufferSlice<Vector3>(posBuffer, 0);
context.WriteBuffer(posSlice, probePositions);
context.Flush();// Prepare integrator with 2 bounce indirect lighting
integrator.Prepare(
    context,
    world,
    posSlice,
    0.05f, // 5cm push-off to avoid self-intersection
    2      // 2 bounce indirect lighting
);// Now ready for integration operations
var result = integrator.IntegrateDirectRadiance(context, 0, numProbes, 1024, false, outputBuffer);
```
