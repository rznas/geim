<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Collections.LowLevel.Unsafe.UnsafeUtility.Free.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| memory | A pointer to the block of memory you want to free. Ensure this pointer is valid and was previously allocated using UnsafeUtility.Malloc to avoid undefined behavior. |
| allocator | The allocator type that was originally used to allocate the memory. It is crucial that the allocator matches the one used during allocation to ensure correct deallocation. |

### Description

Frees a block of memory that was previously allocated.

The `Free` method deallocates memory that was allocated using UnsafeUtility.Malloc. This is essential to prevent memory leaks, which can lead to reduced application performance or system instability. Always ensure that any allocated memory is freed when it is no longer needed.

Exercise caution when using this method. Improper deallocation of memory can result in undefined behavior and application crashes. The allocator used in this function should match the one used in the corresponding allocation.

```csharp
using Unity.Collections;
using Unity.Collections.LowLevel.Unsafe;
using UnityEngine;public class UnsafeUtilityFreeExample : MonoBehaviour
{
    void Start()
    {
        unsafe
        {
            // Allocate a block of memory for 10 integers
            int sizeOfInt = UnsafeUtility.SizeOf<int>();
            void* memoryBlock = UnsafeUtility.Malloc(sizeOfInt * 10, 4, Allocator.Temp);            // Ensure memory is freed when no longer needed
            UnsafeUtility.Free(memoryBlock, Allocator.Temp);
            Debug.Log("Memory block freed.");
        }
    }
}
```

Additional resources: UnsafeUtility.Malloc.

### Parameters

| Parameter | Description |
| --- | --- |
| memory | A pointer to the block of memory you want to free. Ensure this pointer is valid and was previously allocated using UnsafeUtility.Malloc to avoid undefined behavior. |
| label | The memory label that was used to allocate the memory. The memory label should match the one used during allocation to ensure correct deallocation. |

### Description

Frees a block of memory that was previously allocated, using the specified memory label.

The `Free` method deallocates memory that was allocated using UnsafeUtility.Malloc. This is essential to prevent memory leaks, which can lead to reduced application performance or system instability. Always ensure that any allocated memory is freed when it is no longer needed.

Exercise caution when using this method. Improper deallocation of memory can result in undefined behavior and application crashes. The memory label used in this function must match the one used in the corresponding allocation.

Additional resources: MemoryLabel, UnsafeUtility.Malloc.
