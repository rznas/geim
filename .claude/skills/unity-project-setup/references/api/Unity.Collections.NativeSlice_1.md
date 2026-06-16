<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Collections.NativeSlice_1.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Provides a view on a buffer of native memory most commonly acquired from a NativeArray<T0>.

A `NativeSlice` includes safety mechanisms for use with the job system. A `NativeSlice` doesn't own any memory allocations and can't be disposed, unlike a `NativeArray` NativeArray<T0>. A `NativeSlice` supports a stride value and doesn't necessarily represent a contiguous memory range. The stride value determines the number of bytes from the first byte of the element to the first byte of the next element. The stride value must always be a multiple of the size of the type of the slice in bytes. The stride value allows you to skip elements from the underlying buffer. By default, the stride is set to the size of the type of slice in bytes. This means that the slice represents a contiguous memory range. If you don't need a stride and are only working with contiguous memory ranges, use NativeArray<T0> instead.

### Properties

| Property | Description |
| --- | --- |
| Length | Represents the number of elements in a NativeSlice<T0>. |
| Stride | Gets the stride value for the NativeSlice<T0> instance. |
| this[int] | Accesses NativeSlice<T0> elements by index. |

### Constructors

| Constructor | Description |
| --- | --- |
| NativeSlice_1 | Constructs a new NativeSlice from a NativeArray or NativeSlice. |

### Public Methods

| Method | Description |
| --- | --- |
| CopyFrom | Copies all the elements from a NativeSlice<T0> or managed array of the same length. |
| CopyTo | Copies all the elements of a NativeSlice<T0> to a NativeArray<T0> or managed array of the same length. |
| GetEnumerator | Gets an enumerator to iterate through the elements of a NativeSlice<T0>. |
| SliceConvert | Reinterprets a NativeSlice with a different data type (type punning). |
| SliceWithStride | SliceWithStride. |
| ToArray | Converts a NativeSlice<T0> to managed array. |

### Operators

| Operator | Description |
| --- | --- |
| NativeSlice<T> | Implicit operator to create a NativeSlice<T0> from a NativeArray<T0>. |
