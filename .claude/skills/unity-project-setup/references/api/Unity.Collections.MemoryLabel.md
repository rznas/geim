<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Collections.MemoryLabel.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Represents a memory label used for profiling and tracking memory allocations in Unity.

Memory labels are useful when you want to group allocations for specific objects or systems. They can help in debugging memory issues and understanding the memory footprint of your application.

 When you create a NativeArray<T0> or UnsafeUtility.Malloc, you can specify a memory label to associate with that allocation.

 Memory labels can only be used with allocators that support memory labeling, i.e. Allocator.Persistent and Allocator.Domain.

```csharp
using UnityEngine;
using Unity.Collections;public class MemoryLabelExample : MonoBehaviour
{
    static readonly MemoryLabel myMemoryLabel = new MemoryLabel("MyArea", "MyObject", Allocator.Persistent);    NativeArray<int> myArray;    void Start()
    {
        // Create array with fixed length and memory label
        myArray = new NativeArray<int>(10, myMemoryLabel);        for (int i = 0; i < myArray.Length; i++)
        {
            myArray[i] = i * 2;
        }
    }    public void OnDestroy()
    {
        // Dispose of the array to avoid leaks
        if (myArray.IsCreated)
        {
            myArray.Dispose();
        }
    }
}
```

### Properties

| Property | Description |
| --- | --- |
| IsCreated | Gets a value indicating whether this memory label has been created. |

### Constructors

| Constructor | Description |
| --- | --- |
| MemoryLabel | Initializes a new instance of the MemoryLabel struct. |

### Static Methods

| Method | Description |
| --- | --- |
| SupportsAllocator | Determines whether the specified allocator supports memory labeling. |
