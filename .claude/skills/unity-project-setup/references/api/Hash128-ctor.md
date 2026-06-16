<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Hash128-ctor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| u32_0 | First 32 bits of hash value. |
| u32_1 | Second 32 bits of hash value. |
| u32_2 | Third 32 bits of hash value. |
| u32_3 | Fourth 32 bits of hash value. |
| u64_0 | First 64 bits of hash value. |
| u64_1 | Second 64 bits of hash value. |

### Description

Directly initialize a Hash128 with a 128-bit value.

To compute hash value of some data, use Hash128.Compute function.

```csharp
using UnityEngine;public class ExampleScript : MonoBehaviour
{
    void Start()
    {
        var hash = new Hash128(0x01020304, 0xaabbccdd, 0x12345678, 0xbaadc0de);
        // prints "04030201ddccbbaa78563412dec0adba",
        // because the hash values are in little-endian byte order
        Debug.Log(hash.ToString());
    }
}
```
