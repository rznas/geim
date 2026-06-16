<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Collections.LowLevel.Unsafe.UnsafeUtility.PinGCObjectAndGetAddress.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| target | The object to pin. This should be a managed object whose memory location needs to remain fixed during garbage collection. |
| gcHandle | The handle associated with the pinned object. Manage this handle properly to ensure it is released when no longer needed. |

### Returns

**void*** A pointer to the memory location of the pinned object. Use this pointer for direct memory access to the object's data.

### Description

Pins an object in memory, ensuring it remains at a fixed memory location during garbage collection.

The `PinGCObjectAndGetAddress` method pins a managed object, preventing the garbage collector from relocating it. This is particularly useful when you need to maintain stable memory addresses while interfacing with unmanaged code or performing low-level memory operations. Ensure that you release the GC handle using UnsafeUtility.ReleaseGCObject to prevent resource leaks.

```csharp
using UnityEngine;
using Unity.Collections.LowLevel.Unsafe;public class PinGCObjectBoxedStructExample : MonoBehaviour
{
    private struct MyStruct
    {
        public int value;
    }    void Start()
    {
        // Create and box a struct
        object myObject = new MyStruct { value = 20 };        // Pin the boxed struct and get the address of its memory location
        unsafe
        {
            void* dataPtr = UnsafeUtility.PinGCObjectAndGetAddress(myObject, out ulong gcHandle);            // Move the pointer to skip the object header to get to the struct value
            int objectHeaderSize = UnsafeUtility.SizeOf<long>() * 2; // Typical object header size in bytes
            int* valuePtr = (int*)((byte*)dataPtr + objectHeaderSize);            // Log the initial value
            Debug.Log($"Initial struct value: {*valuePtr}"); // Expected output: 20            // Modify the value through the pointer
            *valuePtr = 40;            // Release the GC handle after manipulation
            UnsafeUtility.ReleaseGCObject(gcHandle);
        }        // Re-cast the object to a struct to verify modifications
        MyStruct modifiedStruct = (MyStruct)myObject;
        Debug.Log($"Modified struct value: {modifiedStruct.value}"); // Expected output: 40        // Confirm the GC handle is released
        Debug.Log("GC handle released, boxed struct unpinned.");
    }
}
```

Additional resources: UnsafeUtility.PinGCArrayAndGetAddress.
