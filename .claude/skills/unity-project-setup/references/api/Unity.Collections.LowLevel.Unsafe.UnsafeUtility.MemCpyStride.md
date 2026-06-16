<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Collections.LowLevel.Unsafe.UnsafeUtility.MemCpyStride.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| destination | A pointer to the start of the destination memory block. The memory block should accommodate the data according to the destination stride and element size requirements. |
| destinationStride | The stride in bytes between consecutive elements in the destination memory block. This stride facilitates skipping bytes. |
| source | A pointer to the start of the source memory block, containing the data to be copied. This block must be sized based on the source stride and count. |
| sourceStride | The stride in bytes between consecutive elements in the source memory block. This allows for correct data retrieval from interleaved or padded layouts. |
| elementSize | The size in bytes of each individual element to be copied. Ensure consistency in element size between source and destination for accurate copying. |
| count | The number of elements to transfer from the source block to the destination block. Both source and destination must have space for this element count. |

### Description

Copies data between memory blocks with specified strides, allowing skipped bytes in both source and destination.

The `MemCpyStride` method is similar to UnsafeUtility.MemCpy, but it supports variable strides for both source and destination memory blocks. This functionality is particularly useful for dealing with non-contiguous memory layouts, such as those found in structures with padding or interleaved data. It allows efficient data transfer when direct element alignment is not feasible.

Ensure that both source and destination pointers are valid and that their memory regions do not incorrectly overlap, which would lead to undefined behavior. This method does not perform bounds checking, so it is crucial to ensure there is sufficient space for the data transfer.

```csharp
using UnityEngine;
using Unity.Collections;
using Unity.Collections.LowLevel.Unsafe;
using System.Runtime.InteropServices;public class MemCpyStrideExample : MonoBehaviour
{
    [StructLayout(LayoutKind.Sequential)]
    struct VertexData
    {
        public float x;
        public float y;
        public float z;
        public int id;
    }    void Start()
    {
        // Create source NativeArray of VertexData with padding
        NativeArray<VertexData> vertexArray = new NativeArray<VertexData>(5, Allocator.Temp);
        // Create destination NativeArray to hold just the IDs, without extra floats
        NativeArray<int> idArray = new NativeArray<int>(5, Allocator.Temp);        // Fill the vertex array with sample vertex data
        for (int i = 0; i < vertexArray.Length; i++)
        {
            vertexArray[i] = new VertexData { x = i, y = i, z = i, id = i + 100 };
        }        // Use UnsafeUtility.MemCpyStride to copy only the IDs from the padded structure
        unsafe
        {
            void* vertexPtr = vertexArray.GetUnsafeReadOnlyPtr();
            void* idPtr = idArray.GetUnsafePtr();            int elementSize = UnsafeUtility.SizeOf<int>();  // Size of ID element
            int srcStride = UnsafeUtility.SizeOf<VertexData>();  // Complete size of VertexData struct
            int idOffset = UnsafeUtility.AlignOf<float>() * 3;  // Offset bytes past the floats to the ID            UnsafeUtility.MemCpyStride(idPtr, elementSize, (byte*)vertexPtr + idOffset, srcStride, elementSize, vertexArray.Length);
        }        // Log the copied IDs from the idArray to verify the result
        for (int i = 0; i < idArray.Length; i++)
        {
            Debug.Log($"ID: {idArray[i]}"); // Expected output: 100, 101, 102, 103, 104
        }        // Clean up resources
        vertexArray.Dispose();
        idArray.Dispose();
    }
}
```

Additional resources: UnsafeUtility.SizeOf, UnsafeUtility.MemCpy.
