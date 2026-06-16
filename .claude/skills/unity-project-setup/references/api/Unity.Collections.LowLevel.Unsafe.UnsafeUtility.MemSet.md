<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Collections.LowLevel.Unsafe.UnsafeUtility.MemSet.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| destination | A pointer to the start of the memory block that you want to fill. Ensure that the memory region has space equal to or greater than the specified size to avoid overflow. |
| value | The byte value used to fill the memory block. This value is duplicated throughout the entire specified size of the block. |
| size | The number of bytes to set in the memory block. Ensure that this size does not exceed the capacity of the destination buffer to prevent memory corruption. |

### Description

Sets a block of memory to a specified byte value for a defined size.

The `MemSet` method fills a specified block of memory with a given byte value. This operation is useful for initializing memory to a known state, such as setting a buffer to zero or another specific value. Properly initializing memory can prevent data leaks and ensure predictable behavior in memory management.

```csharp
using UnityEngine;
using Unity.Collections.LowLevel.Unsafe;public class MemSetExample : MonoBehaviour
{
    void Start()
    {
        int bufferSize = 10;        // Allocate a buffer using stackalloc
        unsafe
        {
            byte* buffer = stackalloc byte[bufferSize];            // Use MemSet to initialize buffer with the value 0xFF
            UnsafeUtility.MemSet(buffer, 0xFF, bufferSize);            // Output the initialized buffer to verify the result
            Debug.Log("Buffer contents after MemSet:");
            for (int i = 0; i < bufferSize; i++)
            {
                Debug.Log(buffer[i]);  // Expected output: 255 (0xFF) for each element
            }
        }
    }
}
```

Additional resources: UnsafeUtility.MemCpy.
