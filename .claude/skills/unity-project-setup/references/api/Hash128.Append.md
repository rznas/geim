<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Hash128.Append.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| val | Input value. |

### Description

Hash new input data and combine with the current hash value.

The value must be an "unmanaged" C# type. Primitive types like int, float, bool, enums, pointers, or structs containing primitive types are all unmanaged types. See [Unmanaged types](https://docs.microsoft.com/en-us/dotnet/csharp/language-reference/builtin-types/unmanaged-types) in C# language reference.

The int and float overloads use a dedicated code path that is optimized for 4-byte data sizes.

```csharp
using UnityEngine;public class ExampleScript : MonoBehaviour
{
    void Start()
    {
        var hash = new Hash128();
        hash.Append(42);
        hash.Append(13.0f);
        hash.Append("Hello");
        hash.Append(new int[] {1, 2, 3, 4, 5});
        // prints "2d6e582c3fcfb4b8f3c16650a75dc37b"
        Debug.Log(hash.ToString());
    }
}
```

### Parameters

| Parameter | Description |
| --- | --- |
| data | Input data string. Note that Unity interprets the string as UTF-8 data, even if internally in C# strings are UTF-16. |

### Description

Hash new input string and combine with the current hash value.

### Parameters

| Parameter | Description |
| --- | --- |
| data | Input data array. |

### Description

Hash new input data array and combine with the current hash value.

### Parameters

| Parameter | Description |
| --- | --- |
| data | Input data array. |
| start | The first element in the data to start hashing from. |
| count | Number of array elements to hash. |

### Description

Hash a slice of new input data array and combine with the current hash value.

### Parameters

| Parameter | Description |
| --- | --- |
| data | Raw data pointer, usually used with C# `stackalloc` data. |
| size | Data size in bytes. |

### Description

Hash new input data and combine with the current hash value.
