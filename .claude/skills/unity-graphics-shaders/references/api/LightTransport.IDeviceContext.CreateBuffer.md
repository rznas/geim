<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LightTransport.IDeviceContext.CreateBuffer.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| count | Number of elements in the buffer. |
| stride | Size of each element in bytes. |

### Returns

**BufferID** Unique identifier for the newly created buffer.

### Description

Allocates a new buffer on the device with the specified element count and stride.

Creates a buffer that can store the specified number of elements, each with the given stride (size in bytes). The actual memory allocation may occur in CPU memory, GPU memory, or unified memory depending on the hardware platform and implementation.

The returned BufferID can be used to create typed BufferSlice objects for reading and writing data.

**Note:** Buffers must be destroyed using DestroyBuffer to avoid memory leaks.

```csharp
// Create a buffer for 1000 integers
BufferID bufferId = context.CreateBuffer(1000, sizeof(int));
var intSlice = new BufferSlice<int>(bufferId, 0);// Create a buffer for 500 Vector3 structures
BufferID vectorBuffer = context.CreateBuffer(500, 12); // size is 3 floats * 4 bytes
var vectorSlice = new BufferSlice<Vector3>(vectorBuffer, 0);
```
