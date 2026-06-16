<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Collections.LowLevel.Unsafe.UnsafeUtility.ReleaseGCObject.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| gcHandle | The handle associated with the pinned object. |

### Description

Releases a GC handle obtained from UnsafeUtility.PinGCObjectAndGetAddress or UnsafeUtility.PinGCArrayAndGetDataAddress.

The `ReleaseGCObject` method unpins an object, allowing the garbage collector to manage its memory freely. Use this method to prevent resource leaks. Ensure you release each handle after finishing direct memory operations.

```csharp
using Unity.Collections.LowLevel.Unsafe;
using UnityEngine;public class ReleaseGCObjectExample : MonoBehaviour
{
    private struct MyStruct
    {
        public int value;
    }    void Start()
    {
        // Box a struct
        object boxedStruct = new MyStruct { value = 10 };        // Pin the object and get a GC handle
        unsafe
        {
            void* dataPtr = UnsafeUtility.PinGCObjectAndGetAddress(boxedStruct, out ulong gcHandle);            // Access and modify data
            int objectHeaderSize = UnsafeUtility.SizeOf<long>() * 2;
            int* valuePtr = (int*)((byte*)dataPtr + objectHeaderSize);
            *valuePtr = 20;            // Release the GC handle
            UnsafeUtility.ReleaseGCObject(gcHandle);
        }        // Verify modification
        MyStruct modifiedStruct = (MyStruct)boxedStruct;
        Debug.Log($"Modified value: {modifiedStruct.value}"); // Outputs: 20        // Confirm handle release
        Debug.Log("GC handle released.");
    }
}
```

Additional resources: UnsafeUtility.PinGCObjectAndGetAddress, UnsafeUtility.PinGCArrayAndGetDataAddress.
