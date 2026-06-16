<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Collections.LowLevel.Unsafe.UnsafeUtility.AsRef.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| ptr | A pointer to the memory location of the struct. Ensure the pointer is valid and correctly allocated. |

### Returns

**T** A reference to the struct of type `T`. This reference allows changes to the struct at its current memory location.

### Description

Gets a reference to a struct at a specific memory location.

The `AsRef` method provides a reference to a struct directly in memory. This allows efficient data manipulation without copying. Use this method when performance is critical, and you must access data in-place. Improper use can lead to memory corruption, so always ensure pointer validity.

```csharp
using UnityEngine;
using Unity.Collections.LowLevel.Unsafe;public class AsRefExample : MonoBehaviour
{
    struct Position
    {
        public float X;
        public float Y;
        public float Z;
    }    void Start()
    {
        // Allocate memory for Position using stackalloc
        unsafe
        {
            Position* positionPtr = stackalloc Position[1];            // Set initial values
            positionPtr->X = 1.0f;
            positionPtr->Y = 2.0f;
            positionPtr->Z = 3.0f;            // Use AsRef to get a reference to the struct
            ref Position positionRef = ref UnsafeUtility.AsRef<Position>(positionPtr);            // Modify the struct through the reference
            positionRef.X = 10.0f;
            positionRef.Y = 20.0f;
            positionRef.Z = 30.0f;            // Output the modified values
            Debug.Log($"Modified Position: X = {positionPtr->X}, Y = {positionPtr->Y}, Z = {positionPtr->Z}");
        }
    }
}
```

Additional resources: UnsafeUtility.As.
