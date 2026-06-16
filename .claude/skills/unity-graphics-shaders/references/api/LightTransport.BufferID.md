<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LightTransport.BufferID.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Unique identifier to a memory buffer in device.

BufferID serves as an opaque handle to memory buffers allocated through IDeviceContext.CreateBuffer. The buffer can reside in CPU memory, GPU memory, or unified memory, depending on the implementation.

 The BufferID abstracts the underlying memory management details and provides a unified interface for:

- Cross-platform memory allocation.
- Memory lifetime management.
- Type-safe buffer operations through BufferSlice.

BufferIDs must be explicitly destroyed using IDeviceContext.DestroyBuffer to prevent memory leaks.

```csharp
// Create buffers for different data types
BufferID vertexBuffer = context.CreateBuffer(1000, 12); // 1000 Vector3s
BufferID resultBuffer = context.CreateBuffer(64, 108);  // 64 SphericalHarmonicsL2// Create typed slices for safe operations
var vertices = new BufferSlice<Vector3>(vertexBuffer, 0);
var results = new BufferSlice<SphericalHarmonicsL2>(resultBuffer, 0);// Use buffers with integrator operations
integrator.Prepare(context, world, vertices, 0.1f, 2);
var result = integrator.IntegrateDirectRadiance(
    context, 0, 64, 1024, false, results);// Cleanup - important to prevent memory leaks
context.DestroyBuffer(vertexBuffer);
context.DestroyBuffer(resultBuffer);
```

### Properties

| Property | Description |
| --- | --- |
| Value | The underlying buffer identifier value. |

### Constructors

| Constructor | Description |
| --- | --- |
| BufferID | Create a new BufferID. |

### Public Methods

| Method | Description |
| --- | --- |
| Slice | Constructs a typed slice from the BufferID. |
