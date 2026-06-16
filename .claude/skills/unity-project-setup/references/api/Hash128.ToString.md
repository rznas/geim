<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Hash128.ToString.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Convert a Hash128 to string.

This creates a string that is 32 characters long. Each of the 16 hash bytes is represented as two hexadecimal characters.

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

Additional resources: Hash128.Parse.
