<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LightTransport.BufferSlice_1.UnsafeReinterpret.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**BufferSlice<U>** An alias of the same slice, but reinterpreted as the target type.

### Description

Reinterpret the slice as having a different data type (type punning), but does not check if the reinterpret is valid.

Performs unchecked reinterpretation of the BufferSlice to view the same memory as a different type. This method skips all validation and should only be used when you are certain the reinterpretation is valid.

**Use Cases:**

- Performance-critical code where validation overhead is unacceptable.
- Advanced scenarios where you need to bypass safety checks.
- Custom type layouts that don't follow standard alignment rules.

**Warning:** This method can lead to undefined behavior, memory corruption, or crashes if used incorrectly. Prefer SafeReinterpret unless you have specific performance requirements.

Additional resources: SafeReinterpret for validated reinterpretation.

```csharp
// Performance-critical reinterpretation
var floatSlice = new BufferSlice<float>(buffer, 0);// Unsafe reinterpret for maximum performance
// WARNING: No validation - ensure this is safe!
var byteSlice = floatSlice.UnsafeReinterpret<byte>();// Use with caution - misaligned access could crash
var intSlice = floatSlice.UnsafeReinterpret<int>(); // OK: same size
var doubleSlice = floatSlice.UnsafeReinterpret<double>(); // DANGEROUS: different size
```
