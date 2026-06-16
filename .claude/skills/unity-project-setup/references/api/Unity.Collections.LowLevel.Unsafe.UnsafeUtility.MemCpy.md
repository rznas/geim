<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Collections.LowLevel.Unsafe.UnsafeUtility.MemCpy.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| destination | A pointer to the destination memory block. Ensure this block is large enough to store the data being copied. |
| source | A pointer to the source memory block. This block should contain the data you want to copy. |
| size | The number of bytes to copy from the source to the destination. |

### Description

Copies a specified number of bytes from a source memory location to a destination memory location.

The `MemCpy` method efficiently copies data from one memory location to another. It is ideal for quickly duplicating memory content in performance-critical applications. Note that if the source and destination memory regions overlap, the result is not guaranteed to be correct. In such cases, use UnsafeUtility.MemMove to handle overlapping data safely.

```csharp
using UnityEngine;
using Unity.Collections.LowLevel.Unsafe;public class MemCpyExample : MonoBehaviour
{
    void Start()
    {
        int numElements = 5;
        int size = numElements * sizeof(float);        // Use stackalloc to allocate memory for source and destination buffers
        unsafe
        {
            float* srcBuffer = stackalloc float[numElements];
            float* dstBuffer = stackalloc float[numElements];            // Initialize the source buffer with data
            for (int i = 0; i < numElements; i++)
            {
                srcBuffer[i] = i * 1.5f;  // Fills srcBuffer with values 0.0, 1.5, 3.0, 4.5, 6.0
            }            // Use MemCpy to copy data from source to destination
            UnsafeUtility.MemCpy(dstBuffer, srcBuffer, size);            // Output the contents of the destination buffer to verify the copy
            Debug.Log("Contents of destination buffer after MemCpy:");
            for (int i = 0; i < numElements; i++)
            {
                Debug.Log(dstBuffer[i]);  // Expected output: 0.0, 1.5, 3.0, 4.5, 6.0
            }
        }
    }
}
```

Additional resources: UnsafeUtility.MemMove.
