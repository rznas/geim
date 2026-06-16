<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Collections.LowLevel.Unsafe.UnsafeUtility.AlignOf.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**int** The alignment size in bytes required for the specified struct type.

### Description

Retrieves the minimum memory alignment requirement for a specified struct type.

The `AlignOf` method calculates the minimum alignment required for a struct type in memory. This is crucial for ensuring the proper alignment of data structures, which can improve access speed and comply with hardware requirements.

Proper alignment can prevent performance penalties by avoiding misaligned data access, which might require multiple memory accesses. This function is particularly useful when you're implementing custom memory allocations or interop scenarios where data alignment is critical.

```csharp
using System;
using Unity.Collections.LowLevel.Unsafe;
using System.Runtime.InteropServices;
using UnityEngine;[StructLayout(LayoutKind.Sequential)]
struct ExampleStruct
{
    public byte ByteValue;  // 1 byte
    public int IntValue;    // 4 bytes
    public byte AnotherByte; // 1 byte
}public class StructSizeAndAlignment : MonoBehaviour
{
    void Start()
    {
        // Calculate size and alignment for ExampleStruct
        int size = UnsafeUtility.SizeOf<ExampleStruct>();
        int alignment = UnsafeUtility.AlignOf<ExampleStruct>();        Debug.Log($"Size of ExampleStruct: {size} bytes");
        Debug.Log($"Alignment requirement of ExampleStruct: {alignment} bytes");
    }
}
```

Additional resources: UnsafeUtility.SizeOf.
