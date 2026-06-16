<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LightTransport.BufferID.Slice.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| offset | The offset to use for the slice, measured in elements of the specified type. |

### Returns

**BufferSlice<T>** A typed slice aliasing the BufferID.

### Description

Constructs a typed slice from the BufferID.

Creates a BufferSlice that provides a typed view into the buffer starting at the specified offset. This is a convenience method equivalent to constructing a BufferSlice manually.

The offset is measured in elements of type T, not in bytes. This method provides type safety and helps prevent common offset calculation errors.

Additional resources: BufferSlice for detailed slice operations and examples.

```csharp
// Create a large buffer for mixed data
BufferID sharedBuffer = context.CreateBuffer(1000, sizeof(float));// Create slices using the convenience method
var firstSection = sharedBuffer.Slice<float>(0);     // Elements 0-299
var secondSection = sharedBuffer.Slice<Vector3>(300); // Elements 300-399 as Vector3s// Equivalent to manual BufferSlice construction
var manualSlice = new BufferSlice<float>(sharedBuffer, 0);
Debug.Assert(firstSection.Id.Value == manualSlice.Id.Value);
Debug.Assert(firstSection.Offset == manualSlice.Offset);
```
