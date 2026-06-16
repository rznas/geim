<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Hash128.Compute.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| val | Input value. |

### Returns

**Hash128** The 128-bit hash.

### Description

Compute a hash of input data.

The value must be an "unmanaged" C# type. Primitive types like `int`, `float`, `bool`, enums, pointers, or structs containing primitive types are all unmanaged types. See [Unmanaged types](https://docs.microsoft.com/en-us/dotnet/csharp/language-reference/builtin-types/unmanaged-types) in C# language reference.

The `int` and `float` overloads use a dedicated hashing code path that is optimized for 4-byte data sizes.

```csharp
using UnityEngine;public class ExampleScript : MonoBehaviour
{
    void Start()
    {
        var data = new Vector3(1.5f, 7.0f, 42.0f);
        var hash = Hash128.Compute(ref data);
        // prints "abc99ce06a8d7acca0714cd64d661808"
        Debug.Log(hash.ToString());
    }
}
```

### Parameters

| Parameter | Description |
| --- | --- |
| data | Input data string. Note that Unity interprets the string as UTF-8 data, even if internally in C# strings are UTF-16. |

### Returns

**Hash128** The 128-bit hash.

### Description

Compute a hash of input data string.

```csharp
using UnityEngine;public class ExampleScript : MonoBehaviour
{
    void Start()
    {
        var hash = Hash128.Compute("The quick brown fox jumps over the lazy dog");
        // prints "c79306aa46e8122b1b340724747e361d"
        Debug.Log(hash.ToString());
    }
}
```

### Parameters

| Parameter | Description |
| --- | --- |
| data | Input data array. |

### Returns

**Hash128** The 128-bit hash.

### Description

Compute a hash of input data.

```csharp
using UnityEngine;public class ExampleScript : MonoBehaviour
{
    void Start()
    {
        var data = new byte[] { 10, 20, 30, 40, 50 };
        var hash = Hash128.Compute(data);
        // prints "6e8dd00dc1d495a01d9e6dbffcd174b2"
        Debug.Log(hash.ToString());
    }
}
```

### Parameters

| Parameter | Description |
| --- | --- |
| data | Input data array. |
| start | The first element in the data to start hashing from. |
| count | Number of array elements to hash. |

### Returns

**Hash128** The 128-bit hash.

### Description

Compute a hash of a slice of input data.

```csharp
using UnityEngine;public class ExampleScript : MonoBehaviour
{
    void Start()
    {
        var data = new byte[] { 0, 10, 20, 30, 40, 50, 60 };
        // will hash bytes: 10, 20, 30, 40, 50
        var hash = Hash128.Compute(data, 1, 5);
        // prints "6e8dd00dc1d495a01d9e6dbffcd174b2"
        Debug.Log(hash.ToString());
    }
}
```

### Parameters

| Parameter | Description |
| --- | --- |
| data | Raw data pointer, usually used with C# `stackalloc` data. |
| size | Data size in bytes. |

### Returns

**Hash128** The 128-bit hash.

### Description

Compute a hash of input data.
