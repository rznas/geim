<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LightTransport.BufferSlice_1-ctor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| id | ID of the buffer. |
| offset | Offset from the beginning of the buffer, measured in elements of type T. |

### Description

Construct a new BufferSlice struct by defining an offset from the beginning of a buffer. The buffer is defined by the BufferID.

Creates a typed view into a buffer starting at the specified element offset. The offset is measured in elements of the type T, not in bytes.

**Important:** The offset must not exceed the buffer's capacity, and there must be sufficient space for the intended operations. It is up the implementation to decide if bounds checking on Buffer access is performed.

```csharp
// Create a buffer for 1000 Vector3 elements
BufferID buffer = context.CreateBuffer(1000, 12); // 12 bytes per Vector3// Create slices for different portions
var firstHalf = new BufferSlice<Vector3>(buffer, 0);   // Elements 0-499
var secondHalf = new BufferSlice<Vector3>(buffer, 500); // Elements 500-999// Use slices independently
context.WriteBuffer(firstHalf, firstHalfData);
context.WriteBuffer(secondHalf, secondHalfData);
```
