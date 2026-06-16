<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Collections.LowLevel.Unsafe.UnsafeUtility.MemSwap.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| ptr1 | A pointer to the first memory buffer. This buffer will be swapped with the second one. |
| ptr2 | A pointer to the second memory buffer to swap with the first. Ensure both buffers are correctly allocated and are of equal size. |
| size | The size, in bytes, of the data each buffer holds. This is the number of bytes that will be swapped between the two buffers. |

### Description

Swap the content of two memory buffers of the same size.

The `MemSwap` method exchanges the data between two memory buffers. Each buffer must have the same size for the swap to be valid. This method is efficient for reorganizing data or implementing custom shuffle operations.

When the memory regions overlap, the data from the first buffer is copied to the second, ensuring no data corruption. Be cautious to provide correct pointers and sizes to avoid unintended behavior.

```csharp
using UnityEngine;
using Unity.Collections.LowLevel.Unsafe;public class MemSwapExample : MonoBehaviour
{
    void Start()
    {
        int numElements = 3;
        int size = numElements * sizeof(float);        // Use stackalloc to allocate memory for two buffers
        unsafe
        {
            float* buffer1 = stackalloc float[numElements];
            float* buffer2 = stackalloc float[numElements];            // Initialize buffer1 and buffer2 with distinct values
            buffer1[0] = 1.1f; buffer1[1] = 2.2f; buffer1[2] = 3.3f;
            buffer2[0] = 4.4f; buffer2[1] = 5.5f; buffer2[2] = 6.6f;            // Output initial contents of the buffers
            Debug.Log("Before MemSwap:");
            Debug.Log($"Buffer1: {buffer1[0]}, {buffer1[1]}, {buffer1[2]}");
            Debug.Log($"Buffer2: {buffer2[0]}, {buffer2[1]}, {buffer2[2]}");            // Swap the contents of buffer1 and buffer2
            UnsafeUtility.MemSwap(buffer1, buffer2, size);            // Output swapped contents of the buffers
            Debug.Log("After MemSwap:");
            Debug.Log($"Buffer1: {buffer1[0]}, {buffer1[1]}, {buffer1[2]}");  // Expected: 4.4, 5.5, 6.6
            Debug.Log($"Buffer2: {buffer2[0]}, {buffer2[1]}, {buffer2[2]}");  // Expected: 1.1, 2.2, 3.3
        }
    }
}
```

Additional resources: UnsafeUtility.MemCpy.
