<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Collections.LowLevel.Unsafe.UnsafeUtility.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Provides a collection of low-level, unsafe utility methods for memory operations in Unity.

The `UnsafeUtility` class provides functions for direct memory manipulation. These functions are unsafe because they allow you to bypass the safety restrictions of managed code. You can perform operations such as memory allocation, deallocation, copying, and setting memory directly.

Use these methods with extreme caution to avoid memory leaks, access violations, or data corruption. The `UnsafeUtility` class is intended for scenarios where performance is critical, and the overhead of managed memory safety is prohibitive.

Common use cases include interaction with native code, performance-critical sections in custom collections or game systems, and low-level manipulation required by specific algorithms.

```csharp
using Unity.Collections;
using Unity.Collections.LowLevel.Unsafe;
using UnityEngine;public class UnsafeUtilityExample : MonoBehaviour
{
    void Start()
    {
        unsafe
        {
            // Allocate a block of unmanaged memory to store 10 integers
            int sizeOfInt = UnsafeUtility.SizeOf<int>();
            int length = 10;
            void* memoryBlock = UnsafeUtility.Malloc(sizeOfInt * length, 4, Allocator.Temp);            // Write data to the allocated memory
            for (int i = 0; i < length; i++)
            {
                UnsafeUtility.WriteArrayElement<int>(memoryBlock, i, i * 10);
            }            // Read and print data from the allocated memory
            for (int i = 0; i < length; i++)
            {
                int value = UnsafeUtility.ReadArrayElement<int>(memoryBlock, i);
                Debug.Log("Value: " + value);
            }            // Free the allocated unmanaged memory
            UnsafeUtility.Free(memoryBlock, Allocator.Temp);
        }
    }
}
```

Additional resources: NativeArray<T0>, NativeArrayUnsafeUtility, Job system overview.

### Static Methods

| Method | Description |
| --- | --- |
| AddressOf | Obtains the memory address of the specified object as a pointer. |
| AlignOf | Retrieves the minimum memory alignment requirement for a specified struct type. |
| ArrayElementAsRef | Obtains a reference to a value of type T in an array at a specified index in memory. |
| As | Performs an unsafe cast of a specified object to a different type. |
| AsRef | Gets a reference to a struct at a specific memory location. |
| CheckForLeaks | Gets a list of memory leaks. |
| CopyObjectAddressToPtr | Assigns an object reference to a struct or pinned class. |
| CopyPtrToStructure | Copies sizeof(T) bytes from a memory pointer to a struct. |
| CopyStructureToPtr | Copies sizeof(T) bytes from a memory pointer to a struct. |
| EnumEquals | Determines whether specified enums are equal without boxing. |
| EnumToInt | Gets the integer representation of an enum value without boxing. |
| ForgiveLeaks | Tells the leak checking system to ignore any memory allocations made up to that point. |
| Free | Frees a block of memory that was previously allocated. |
| FreeTracked | Free memory with leak tracking. |
| GetFieldOffset | Returns the offset of the field relative struct or class it is contained in. |
| GetLeakDetectionMode | Gets the mode of memory leak detection. |
| IsBlittable | Gets whether a struct is blittable. |
| IsNativeContainerType | Checks whether a struct or type is a NativeContainer. |
| IsUnmanaged | Checks whether the struct or type is unmanaged. |
| IsValidAllocator | Returns true if the allocator label is valid and can be used to allocate or deallocate memory. |
| IsValidNativeContainerElementType | Checks whether the type is acceptable as an element type in a native container. |
| Malloc | Allocates a block of memory of a specified size and alignment. |
| MallocTracked | Allocates a block of memory with specified size, alignment, and tracking information. |
| MemClear | Clears a block of memory, setting all bytes to zero. |
| MemCmp | Checks whether two memory regions are identical. |
| MemCpy | Copies a specified number of bytes from a source memory location to a destination memory location. |
| MemCpyReplicate | Copies memory from a source to a destination and replicates it multiple times. |
| MemCpyStride | Copies data between memory blocks with specified strides, allowing skipped bytes in both source and destination. |
| MemMove | Copies a specified number of bytes from a source memory location to a destination, allowing overlapping regions. |
| MemSet | Sets a block of memory to a specified byte value for a defined size. |
| MemSwap | Swap the content of two memory buffers of the same size. |
| PinGCArrayAndGetDataAddress | Pins a garbage-collected (GC) array and returns the address of its first element, ensuring the array's memory location remains fixed. |
| PinGCObjectAndGetAddress | Pins an object in memory, ensuring it remains at a fixed memory location during garbage collection. |
| ReadArrayElement | Read array element. |
| ReadArrayElementWithStride | Read array element with stride. |
| ReleaseGCObject | Releases a GC handle obtained from UnsafeUtility.PinGCObjectAndGetAddress or UnsafeUtility.PinGCArrayAndGetDataAddress. |
| SetLeakDetectionMode | Set the leak detection mode. |
| SizeOf | Determines the size, in bytes, of a specified type, including padding for alignment. |
| WriteArrayElement | Write array element. |
| WriteArrayElementWithStride | Write array element with stride. |
