<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/HashUtilities.ComputeHash128.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| value | A reference to the value to hash. |
| hash | A reference to the Hash128 to updated with the computed hash. |

### Description

Compute a 128 bit hash based on a value. the type of the value must be a value type.

```csharp
using UnityEngine;
using System.Runtime.InteropServices;public class HashUtilitiesSample
{
    [StructLayout(LayoutKind.Sequential)]
    struct TestData
    {
        public ulong V1;
        public ulong V2;
    }    public void ComputeHash128_ToHash128()
    {
        var message = new TestData
        {
            V1 = 0x73BC2A67F,
            V2 = 0x54B1A5C2C
        };        Hash128 hash = new Hash128();
        HashUtilities.ComputeHash128(ref message, ref hash);
    }
}
```
