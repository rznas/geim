<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Collections.NativeSlice_1-ctor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Constructs a new NativeSlice from a NativeArray or NativeSlice.

### Parameters

| Parameter | Description |
| --- | --- |
| array | The NativeArray<T0> to use. |

### Description

Constructs a new NativeSlice from a NativeArray.

Constructs a new `NativeSlice` that provides a view over the memory of the specified `NativeArray`.

### Parameters

| Parameter | Description |
| --- | --- |
| array | The NativeArray<T0> to use. |
| start | The index of the first element from the source to include in the slice. |

### Description

Constructs a new NativeSlice from a NativeArray, with a defined start index.

Constructs a new `NativeSlice` that provides a view over the memory of the specified `NativeArray`, beginning at a specified starting index.

### Parameters

| Parameter | Description |
| --- | --- |
| array | The NativeArray<T0> to use. |
| start | The index of the first element from the source to include in the slice. |
| length | The number of elements that the new NativeSlice will have. |

### Description

Constructs a new NativeSlice of defined length `length`, from a NativeArray with a defined start index.

Constructs a new `NativeSlice` that provides a view over a sub-region of the specified `NativeArray`, beginning at a specified starting index and covering a specific number of elements.

### Parameters

| Parameter | Description |
| --- | --- |
| slice | The NativeSlice<T0> to use. |
| start | The index of the first element from the source slice to include in the new slice. |

### Description

Constructs a new NativeSlice from another NativeSlice, with a defined start index.

Constructs a new `NativeSlice` that provides a view over the memory of another existing `NativeSlice`, beginning at a specified starting index.

### Parameters

| Parameter | Description |
| --- | --- |
| slice | The NativeSlice<T0> to use. |
| start | The index of the first element from the source slice to include in the new slice. |
| length | The number of elements that the new NativeSlice will have. |

### Description

Constructs a new NativeSlice of defined length `length`, from another NativeSlice, with a defined start index.

Constructs a new `NativeSlice` that provides a view over a defined sub-region of another existing `NativeSlice`, beginning at a specified starting index and covering an exact number of elements.
