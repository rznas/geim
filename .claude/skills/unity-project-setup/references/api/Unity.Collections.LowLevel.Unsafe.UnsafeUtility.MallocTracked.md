<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Collections.LowLevel.Unsafe.UnsafeUtility.MallocTracked.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| size | The size of the memory block to allocate, in bytes. Ensure the size is sufficient for the intended data storage to avoid buffer overflow. |
| alignment | Specifies the alignment of the memory block. Alignment must be a power of two to ensure efficient memory access patterns for various processor architectures. |
| allocator | The memory allocator used to manage the allocation. Choose an allocator type that matches the intended use case for the allocated memory, such as Allocator.Temp or Allocator.Persistent. |
| callstacksToSkip | Specifies the number of call stack frames to skip when tracking memory. Adjust this to refine the granularity of stack traces collected for memory profiling. |

### Returns

**void*** A pointer to the allocated memory block. Manage this pointer diligently, ensuring it is freed appropriately to prevent memory leaks and accessing invalid memory.

### Description

Allocates a block of memory with specified size, alignment, and tracking information.

The `MallocTracked` method allocates memory while providing options to track memory allocations for debugging and profiling purposes. This function is similar to UnsafeUtility.Malloc, but with additional tracking that helps identify memory allocations that might contribute to memory leaks or inefficiencies in performance-critical applications.

Ensure that the allocated memory is properly freed with UnsafeUtility.Free when it is no longer required to avoid memory leaks. Balance the `callstacksToSkip` parameter value to focus on your debugging needs while minimizing overhead.

```csharp
using System.Runtime.InteropServices;
using Unity.Collections;
using Unity.Collections.LowLevel.Unsafe;
using UnityEngine;public class MallocTrackedSimplifiedExample : MonoBehaviour
{
    void Start()
    {
        // Enable Native Leak Detection with stack trace for debugging
        UnsafeUtility.SetLeakDetectionMode(NativeLeakDetectionMode.EnabledWithStackTrace);
        
        // Allocate a block of memory for a CustomNativeArray
        Allocate(10, Allocator.Persistent, out CustomNativeArray<int> array);        // NOTE: Not freeing the buffer in this example; this is intentional for demonstration.
        // During a Domain reload, such as entering/exiting Play Mode, a warning will appear
        // if memory is not properly freed, aiding in identifying leaks.
    }    [StructLayout(LayoutKind.Sequential)]
    unsafe struct CustomNativeArray<T> where T : struct
    {
        public void* m_Buffer;
        public int m_Length;
        public Allocator m_AllocatorLabel;
    }    static void Allocate<T>(int length, Allocator allocator, out CustomNativeArray<T> array) where T : struct
    {
        long totalSize = UnsafeUtility.SizeOf<T>() * length;
        array = default;        unsafe
        {
            // Allocate memory with leak detection tracking
            array.m_Buffer = UnsafeUtility.MallocTracked(totalSize, UnsafeUtility.AlignOf<T>(), allocator, 0);
        }        // Set the array metadata
        array.m_Length = length;
        array.m_AllocatorLabel = allocator;
    }
}
```

See Also: UnsafeUtility.FreeTracked, UnsafeUtility.Malloc, UnsafeUtility.SetLeakDetectionMode.

### Parameters

| Parameter | Description |
| --- | --- |
| size | The size of the memory block to allocate, in bytes. Ensure the size is sufficient for the intended data storage to avoid buffer overflow. |
| alignment | Specifies the alignment of the memory block. Alignment must be a power of two to ensure efficient memory access patterns for various processor architectures. |
| label | The memory label to allocate under. |
| callstacksToSkip | Specifies the number of call stack frames to skip when tracking memory. Adjust this to refine the granularity of stack traces collected for memory profiling. |

### Returns

**void*** A pointer to the allocated memory block. Manage this pointer carefully to prevent memory leaks and ensure proper deallocation.

### Description

Allocates a block of memory with specified size, alignment, memory label and tracking information.

The `MallocTracked` method allocates memory while providing options to track memory allocations for debugging and profiling purposes. This function is similar to UnsafeUtility.Malloc, but with additional tracking that helps identify memory allocations that might contribute to memory leaks or inefficiencies in performance-critical applications.

Specifying a memory label helps in profiling and debugging memory usage in Unity.

To avoid memory leaks, free the allocated memory with UnsafeUtility.Free when it's no longer required. Balance the `callstacksToSkip` parameter value to focus on your debugging needs while minimizing overhead.

See Also: MemoryLabel, UnsafeUtility.FreeTracked, UnsafeUtility.Malloc, UnsafeUtility.SetLeakDetectionMode.
