<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LightTransport.BufferSlice_1.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Represents a typed view into a portion of a device buffer, enabling efficient memory management and type-safe buffer operations.

Unity uses the BufferSlice struct to split one large buffer allocation into smaller buffers, each with explicit types. This provides efficient memory management by allowing multiple logical buffers to share a single physical allocation while maintaining type safety.

BufferSlice is commonly used with:

- IDeviceContext.ReadBuffer and IDeviceContext.WriteBuffer for data transfers.
- IProbeIntegrator methods for input/output buffer specifications.
- Memory-efficient batching of related data structures.

The slice maintains a reference to the underlying BufferID and specifies an offset measured in elements of type T.

```csharp
// Create a large buffer for multiple data types
BufferID sharedBuffer = context.CreateBuffer(1000, sizeof(float));// Create different views into the same buffer
var floatSlice = new BufferSlice<float>(sharedBuffer, 0);    // Elements 0-499
var vectorSlice = new BufferSlice<Vector3>(sharedBuffer, 500); // Elements 500-998// Write data through different slices
var floatData = new NativeArray<float>(500, Allocator.Temp);
var vectorData = new NativeArray<Vector3>(166, Allocator.Temp);context.WriteBuffer(floatSlice, floatData);
context.WriteBuffer(vectorSlice, vectorData);
```

### Properties

| Property | Description |
| --- | --- |
| Id | Buffer ID. |
| Offset | The number of elements to offset, measured from the beginning of the buffer. The value must not exceed the end of the buffer allocation. |

### Constructors

| Constructor | Description |
| --- | --- |
| BufferSlice_1 | Construct a new BufferSlice struct by defining an offset from the beginning of a buffer. The buffer is defined by the BufferID. |

### Public Methods

| Method | Description |
| --- | --- |
| SafeReinterpret | Reinterpret the slice as having a different data type (type punning), performing checks to ensure the reinterpret is valid. |
| UnsafeReinterpret | Reinterpret the slice as having a different data type (type punning), but does not check if the reinterpret is valid. |
