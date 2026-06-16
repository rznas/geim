<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Collections.NativeArray_1.ReadOnly.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Represents a NativeArray<T0> interface constrained to read-only operations.

### Properties

| Property | Description |
| --- | --- |
| IsCreated | Indicates that a ReadOnly has an allocated memory buffer. |
| Length | Provides the number of elements in the ReadOnly. |
| this[int] | Provides read-only access to ReadOnly elements by index. |

### Public Methods

| Method | Description |
| --- | --- |
| AsReadOnlySpan | Exposes ReadOnly data as a System.ReadOnlySpan<T>. |
| CopyTo | Copies all elements to a ReadOnly or managed array of the same length. |
| GetEnumerator | Gets an enumerator. |
| Reinterpret | Reinterpret a ReadOnly with a different data type (type punning). |
| ToArray | Convert the data in a ReadOnly to a managed array. |
| UnsafeElementAt | Provides read-only access to ReadOnly elements by index. |
