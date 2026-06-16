<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/HashUnsafeUtilities.ComputeHash128.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| data | Pointer to the data to hash. |
| dataSize | The number of bytes to hash. |
| hash1 | A pointer to store the low 64 bits of the computed hash. |
| hash2 | A pointer to store the high 64 bits of the computed hash. |
| hash | A pointer to the Hash128 to updated with the computed hash. |

### Description

Compute a 128 bit hash based on a data.

```csharp
using UnityEngine;public class HashUtilitiesSample
{
    public void ComputeHash128_ToULong()
    {
        unsafe
        {
            ulong* message = stackalloc ulong[2];
            message[0] = 0x73BC2A67F;
            message[1] = 0x54B1A5C2C;            ulong h1 = 0;
            ulong h2 = 0;            HashUnsafeUtilities.ComputeHash128(message, sizeof(ulong) * 2, &h1, &h2);
        }
    }    public void ComputeHash128_ToHash128()
    {
        unsafe
        {
            ulong* message = stackalloc ulong[2];
            message[0] = 0x73BC2A67F;
            message[1] = 0x54B1A5C2C;            Hash128 hash = new Hash128();            HashUnsafeUtilities.ComputeHash128(message, sizeof(ulong) * 2, &hash);
        }
    }
}
```
