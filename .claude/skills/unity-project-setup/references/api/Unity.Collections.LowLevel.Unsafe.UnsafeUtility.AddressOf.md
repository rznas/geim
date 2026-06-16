<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Collections.LowLevel.Unsafe.UnsafeUtility.AddressOf.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| output | The managed object for which you need the memory address. Ensure the object remains valid and exists throughout the use of its address. |

### Returns

**void*** A void pointer that represents the memory address of the object. This pointer allows direct access to the memory location. Manage this pointer carefully to prevent runtime errors.

### Description

Obtains the memory address of the specified object as a pointer.

The `AddressOf` method retrieves the memory address of a managed object. Use this in scenarios that need direct memory access or interaction with unmanaged code, where efficiency is crucial.

Exercise caution when you use this method. Improper handling of memory addresses may cause memory corruption or application instability. Use this method to enhance performance in areas where managed memory safety has significant overhead.

```csharp
using Unity.Collections.LowLevel.Unsafe;
using UnityEngine;public class AddressOfExample : MonoBehaviour
{
    struct ExampleStruct
    {
        public int Number;
    }    void Start()
    {
        ExampleStruct example = new ExampleStruct { Number = 100 };
        unsafe
        {
            // Get the memory address of the struct
            void* address = UnsafeUtility.AddressOf(ref example);            // Modify the struct's value directly through the pointer
            ExampleStruct* pointer = (ExampleStruct*)address;
            pointer->Number = 200;            Debug.Log($"Modified value: {example.Number}");  // Outputs: Modified value: 200
        }
    }
}
```

Additional resources: UnsafeUtility.As.
