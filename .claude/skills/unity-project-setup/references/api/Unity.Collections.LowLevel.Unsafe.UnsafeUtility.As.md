<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Collections.LowLevel.Unsafe.UnsafeUtility.As.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| from | The reference to an object of one type that you want to reinterpret as a reference of another type. Ensure the conversion is between compatible types to prevent runtime errors. |

### Returns

**T** A reference to the object interpreted as the target type.

### Description

Performs an unsafe cast of a specified object to a different type.

The `As` method converts a reference of one type to another type. Use this method for direct type conversions, such as during low-level memory operations or when you interact with unmanaged code where type safety is not enforced.

Apply caution when you use this method. Improper casts may lead to runtime exceptions or undefined behavior if the types are incompatible. This method bypasses the usual type safety checks and provides flexibility but less safety.

```csharp
using Unity.Collections.LowLevel.Unsafe;
using UnityEngine;public class UnsafeUtilityAsExample : MonoBehaviour
{
    enum ExampleEnum
    {
        First = 1,
        Second = 2,
    }
    
    struct SourceStruct
    {
        public int IntegerValue;
    }    struct TargetStruct
    {
        public ExampleEnum EnumValue;
    }    void Start()
    {
        SourceStruct source = new SourceStruct { IntegerValue = 2 };        // Use UnsafeUtility.As to convert the source struct to a target struct
        TargetStruct target = UnsafeUtility.As<SourceStruct, TargetStruct>(ref source);        // Output the converted value
        Debug.Log($"Converted value: {target.EnumValue}");
    }
}
```

Additional resources: UnsafeUtility.AddressOf, UnsafeUtility.AsRef.
