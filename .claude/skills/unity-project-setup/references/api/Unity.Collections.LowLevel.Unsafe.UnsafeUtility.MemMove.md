<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Collections.LowLevel.Unsafe.UnsafeUtility.MemMove.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| destination | A pointer to the start of the destination memory block. Ensure this block is large enough to hold the specified number of bytes to prevent overflow. |
| source | A pointer to the start of the source memory block. This block contains the data to be moved and must be valid for the entire size of the move operation. |
| size | The number of bytes to transfer from the source to the destination. This value must be positive and less than or equal to the sizes of both memory blocks. |

### Description

Copies a specified number of bytes from a source memory location to a destination, allowing overlapping regions.

The `MemMove` method is designed to transfer a block of memory from one location to another. Unlike standard memory copy operations, MemMove can safely handle overlapping memory regions by ensuring that data is transferred correctly even when source and destination areas overlap.

This function is essential in scenarios where memory regions may overlap, such as moving elements within an array or buffer. Be cautious when using it to ensure both pointers are valid and the destination block has enough space to accommodate the size of the memory being moved.

```csharp
using UnityEngine;
using Unity.Collections.LowLevel.Unsafe;public class MemMoveOverlapExample : MonoBehaviour
{
    void Start()
    {
        int numElements = 10;        // Allocate a buffer using stackalloc with space for 20 elements
        unsafe
        {
            byte* buffer = stackalloc byte[numElements * 2];            // Initialize the buffer with initial values
            for (int i = 0; i < numElements; i++)
            {
                buffer[i] = (byte)(i + 1);  // Fills buffer with values 1 to 10
            }            Debug.Log("Buffer before MemMove:");
            for (int i = 0; i < numElements * 2; i++)
            {
                Debug.Log(buffer[i]);
            }            // Perform a MemMove operation to simulate overlapping memory move
            // Move the first 10 bytes (1 to 10) to the next starting position (5)
            UnsafeUtility.MemMove(buffer + 5, buffer, numElements);            Debug.Log("Buffer after MemMove:");
            for (int i = 0; i < numElements * 2; i++)
            {
                Debug.Log(buffer[i]);
            }
        }
    }
}
```

Additional resources: UnsafeUtility.MemCpy, UnsafeUtility.MemCpyStride.
