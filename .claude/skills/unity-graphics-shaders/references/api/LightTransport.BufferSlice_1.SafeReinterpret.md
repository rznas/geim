<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LightTransport.BufferSlice_1.SafeReinterpret.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**BufferSlice<U>** An alias of the same slice, but reinterpreted as the target type.

### Description

Reinterpret the slice as having a different data type (type punning), performing checks to ensure the reinterpret is valid.

Safely reinterprets the BufferSlice to view the same memory as a different type. This method performs validation to ensure the type conversion is valid:

**Validation Rules:**

- The size of the target type must be a multiple of the size of the current type.
- The memory alignment requirements must be satisfied.
- The reinterpretation must not exceed buffer boundaries.

This is useful for viewing the same data through different type lenses, such as treating a float buffer as a Vector3 buffer.

Additional resources: UnsafeReinterpret for unchecked reinterpretation.

```csharp
// Create a buffer of floats
BufferID buffer = context.CreateBuffer(300, sizeof(float)); // 300 floats
var floatSlice = new BufferSlice<float>(buffer, 0);// Safely reinterpret as Vector3 (3 floats = 1 Vector3)
var vectorSlice = floatSlice.SafeReinterpret<Vector3>(); // Now views 100 Vector3s// Write Vector3 data through the reinterpreted slice
var vectorData = new NativeArray<Vector3>(100, Allocator.Temp);
for (int i = 0; i < 100; i++)
    vectorData[i] = new Vector3(i, i + 0.5f, i + 1.0f);context.WriteBuffer(vectorSlice, vectorData);// The same memory can still be read as floats
var floatData = new NativeArray<float>(300, Allocator.Temp);
context.ReadBuffer(floatSlice, floatData);
```
