<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Collections.LowLevel.Unsafe.UnsafeUtility.MemCmp.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| ptr1 | A pointer to the first memory buffer. This buffer contains the first block of data to compare. |
| ptr2 | A pointer to the second memory buffer to compare against the first. Ensure this buffer is the same size as the first for an accurate comparison. |
| size | The number of bytes to compare between the two memory regions. |

### Returns

**int** Returns 0 if the contents of the two memory regions are identical; returns a non-zero value if they differ.

### Description

Checks whether two memory regions are identical.

The `MemCmp` method compares two memory regions to determine if they contain identical data. It returns zero if the memory contents are the same and a non-zero value if they differ. This method can be used to compare data blocks efficiently in performance-critical applications.

```csharp
using UnityEngine;
using Unity.Collections.LowLevel.Unsafe;public class MemCmpExample : MonoBehaviour
{
    void Start()
    {
        int numElements = 5;
        int size = numElements * sizeof(int);
    
        unsafe
        {
            // Use stackalloc to allocate memory for three buffers
            int* buffer1 = stackalloc int[numElements];
            int* buffer2 = stackalloc int[numElements];
            int* buffer3 = stackalloc int[numElements];            // Initialize buffer1 with data
            for (int i = 0; i < numElements; i++)
            {
                buffer1[i] = i * 10;  // 0, 10, 20, 30, 40
            }            // Copy contents from buffer1 to buffer2
            UnsafeUtility.MemCpy(buffer2, buffer1, size);            // Modify buffer3 differently
            for (int i = 0; i < numElements; i++)
            {
                buffer3[i] = buffer1[i] + 1;  // 1, 11, 21, 31, 41
            }            // Compare buffer1 and buffer2
            int result1 = UnsafeUtility.MemCmp(buffer1, buffer2, size);
            Debug.Log($"Comparing buffer1 and buffer2, Result: {result1}");  // Expected output: 0 (identical)            // Compare buffer1 and buffer3
            int result2 = UnsafeUtility.MemCmp(buffer1, buffer3, size);
            Debug.Log($"Comparing buffer1 and buffer3, Result: {result2}");  // Expected output: non-zero (different)
        }
    }
}
```

Additional resources: UnsafeUtility.MemSet.
