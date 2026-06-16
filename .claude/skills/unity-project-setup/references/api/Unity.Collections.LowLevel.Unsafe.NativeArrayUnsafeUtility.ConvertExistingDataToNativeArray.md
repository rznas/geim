<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Collections.LowLevel.Unsafe.NativeArrayUnsafeUtility.ConvertExistingDataToNativeArray.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| dataPointer | Pointer to the preallocated data. |
| length | Number of elements. The length of the data in bytes is computed automatically from this. |
| allocator | The Allocator type to use. |

### Returns

**NativeArray<T>** A new NativeArray, allocated with the given `allocator` strategy and wrapping the provided data.

### Description

Converts a buffer to a NativeArray.

You can use this method to turn an existing buffer into a NativeArray. Ownership of the data is controlled via the allocation strategy that the allocator argument provides. Use Allocator.None if the data is owned externally, and the other arguments to transfer control to the NativeArray.

### Parameters

| Parameter | Description |
| --- | --- |
| data | Span of the preallocated data. |
| allocator | The Allocator] type to use. |

### Returns

**NativeArray<T>** A new NativeArray, allocated with the given `allocator` strategy and wrapping the provided data.

### Description

Converts a buffer to a NativeArray.

You can use this method to turn an existing buffer into a NativeArray. Ownership of the data is controlled via the allocation strategy that the allocator argument provides. Use Allocator.None if the data is owned externally, and the other arguments to transfer control to the NativeArray.
