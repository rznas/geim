<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Collections.LowLevel.Unsafe.UnsafeUtility.Malloc.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| size | The number of bytes to allocate. Ensure this size matches the memory required for your data. |
| alignment | The alignment for the allocated memory block. |
| allocator | The allocator type, such as Allocator.Temp or Allocator.Persistent, indicating how the memory is managed. |

### Returns

**void*** A pointer to the allocated memory block. Manage this pointer carefully to prevent memory leaks and ensure proper deallocation.

### Description

Allocates a block of memory of a specified size and alignment.

The `Malloc` method allocates a block of unmanaged memory. It allows developers to specify the size in bytes and the alignment of the memory block. This method is critical in performance-critical applications where precise memory control is required.

The memory allocated is not initialized to zero. Ensure that you free the allocated memory with UnsafeUtility.Free when it is no longer needed.

```csharp
using UnityEngine;
using Unity.Collections;
using Unity.Collections.LowLevel.Unsafe;public class MallocExample : MonoBehaviour
{
    void Start()
    {
        // Specify the number of elements
        int numElements = 10;        // Allocate memory for an array of integers
        unsafe
        {
            int* array = (int*)UnsafeUtility.Malloc(numElements * sizeof(int), UnsafeUtility.AlignOf<int>(), Allocator.Temp);            // Initialize the array with some values
            for (int i = 0; i < numElements; i++)
            {
                array[i] = i * 2;
            }            // Output the contents of the array
            for (int i = 0; i < numElements; i++)
            {
                Debug.Log(array[i]);  // Expected output: 0, 2, 4, 6, ..., 18
            }            // Free the allocated memory
            UnsafeUtility.Free(array, Allocator.Temp);
        }
    }
}
```

Additional resources: UnsafeUtility.MallocTracked, UnsafeUtility.FreeTracked.

### Parameters

| Parameter | Description |
| --- | --- |
| size | The number of bytes to allocate. Ensure this size matches the memory required for your data. |
| alignment | The alignment for the allocated memory block. |
| label | The memory label to allocate under. |

### Returns

**void*** A pointer to the allocated memory block. Manage this pointer carefully to prevent memory leaks and ensure proper deallocation.

### Description

Allocates a block of memory of a specified size and alignment, using the specified memory label.

The `Malloc` method allocates a block of unmanaged memory. It allows developers to specify the size in bytes and the alignment of the memory block. This method is critical in performance-critical applications where precise memory control is required.

Specifying a memory label helps in profiling and debugging memory usage in Unity.

The memory allocated is not initialized to zero. Ensure that you free the allocated memory with UnsafeUtility.Free when it is no longer needed.

Additional resources: MemoryLabel UnsafeUtility.MallocTracked, UnsafeUtility.FreeTracked.

```csharp
using UnityEngine;
using Unity.Collections;
using Unity.Collections.LowLevel.Unsafe;public class MallocMemoryLabelExample : MonoBehaviour
{
    static readonly MemoryLabel myMemoryLabel = new MemoryLabel("MyArea", "MyObject");    void Start()
    {
        // Specify the number of elements
        int numElements = 10;        // Allocate memory for an array of integers using label
        unsafe
        {
            int* array = (int*)UnsafeUtility.Malloc(numElements * sizeof(int), UnsafeUtility.AlignOf<int>(), myMemoryLabel);            // Initialize the array with some values
            for (int i = 0; i < numElements; i++)
            {
                array[i] = i * 2;
            }            // Output the contents of the array
            for (int i = 0; i < numElements; i++)
            {
                Debug.Log(array[i]);  // Expected output: 0, 2, 4, 6, ..., 18
            }            // Free the allocated memory using label
            UnsafeUtility.Free(array, myMemoryLabel);
        }
    }
}
```
