<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Collections.LowLevel.Unsafe.UnsafeUtility.SizeOf.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| type | The type whose byte size is to be determined. |

### Returns

**int** The total size in bytes of the specified type, including any alignment padding required for efficient memory access.

### Description

Determines the size, in bytes, of a specified type, including padding for alignment.

The `SizeOf` method calculates the number of bytes needed to store a single instance of a provided type. This includes any padding necessary for proper memory alignment, which ensures efficient data access and hardware compliance.

Use this method when manually allocating memory or interfacing with lower-level systems in Unity. It is essential for tasks that require precise control over memory use, such as custom data structures or interaction with native plugins.

```csharp
using UnityEngine;
using Unity.Collections.LowLevel.Unsafe;
using System.Runtime.InteropServices;
using Unity.Collections;public class SizeOfExample : MonoBehaviour
{
    [StructLayout(LayoutKind.Sequential)]
    struct ComplexStruct
    {
        public byte SmallValue;
        public double LargeValue;
        public short MediumValue;
    }    void Start()
    {
        // Calculate and log the size of ComplexStruct
        int structSize = UnsafeUtility.SizeOf<ComplexStruct>();
        Debug.Log($"Size of ComplexStruct: {structSize} bytes");        // Using SizeOf to allocate memory for an array of ComplexStruct
        unsafe
        {
            void* structBuffer = UnsafeUtility.Malloc(structSize * 5, UnsafeUtility.AlignOf<ComplexStruct>(), Allocator.Temp);            // Cast the buffer to work with the ComplexStruct type
            ComplexStruct* structArray = (ComplexStruct*)structBuffer;
            for (int i = 0; i < 5; i++)
            {
                structArray[i].SmallValue = (byte)i;
                structArray[i].LargeValue = i * 2.2;
                structArray[i].MediumValue = (short)(i * 10);
                Debug.Log($"Struct[{i}]: SmallValue = {structArray[i].SmallValue}, LargeValue = {structArray[i].LargeValue}, MediumValue = {structArray[i].MediumValue}");
            }            // Free the allocated memory
            UnsafeUtility.Free(structBuffer, Allocator.Temp);
        }
    }
}
```

Additional resources: UnsafeUtility.MallocTracked UnsafeUtility.AlignOf.
