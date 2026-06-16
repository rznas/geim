<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Collections.LowLevel.Unsafe.UnsafeUtility.PinGCArrayAndGetDataAddress.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| target | The managed array to pin. It should be a valid array managed by the garbage collector. |
| gcHandle | The handle to associate with the pinned object. This should be managed properly to ensure it is correctly released. |

### Returns

**void*** A pointer to the first element of the pinned array. Use this pointer for direct memory access to the array elements.

### Description

Pins a garbage-collected (GC) array and returns the address of its first element, ensuring the array's memory location remains fixed.

The `PinGCArrayAndGetDataAddress` method pins a managed array in memory, preventing the garbage collector from relocating it. This is crucial when interfacing with native code or conducting low-level memory operations involving managed arrays. Use this method to obtain a stable pointer to array elements for performance-critical operations.

After pinning an array, release the GC handle using UnsafeUtility.ReleaseGCObject when the array no longer needs to be pinned to avoid resource leaks.

```csharp
using UnityEngine;
using Unity.Collections.LowLevel.Unsafe;
using System;public class PinArrayExample : MonoBehaviour
{
    void Start()
    {
        int[] managedArray = { 1, 2, 3, 4, 5 };        // Pin the managed array and get the address of its first element
        unsafe
        {
            void* dataPtr = UnsafeUtility.PinGCArrayAndGetDataAddress(managedArray, out ulong gcHandle);            Debug.Log($"Address of first element: {(IntPtr)dataPtr}");            // Manipulate the array data directly using the pointer
            int* intPtr = (int*)dataPtr;
            for (int i = 0; i < managedArray.Length; i++)
            {
                intPtr[i] *= 2;  // Double each element in the array
            }            // Verify changes by logging the updated array
            Debug.Log("Contents of managed array after manipulation:");
            for (int i = 0; i < managedArray.Length; i++)
            {
                Debug.Log(managedArray[i]);  // Expected output: 2, 4, 6, 8, 10
            }            // Release the GC handle once done
            UnsafeUtility.ReleaseGCObject(gcHandle);
        }        // Confirm that the GC handle is released
        Debug.Log("GC handle released, managed array unpinned.");
    }
}
```

Additional resources: UnsafeUtility.PinGCArrayAndGetDataAddress.
