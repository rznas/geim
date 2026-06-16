<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Mathf.ClosestPowerOfTwo.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Returns the closest power of two value.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void Start()
    {
        // prints 8
        Debug.Log(Mathf.ClosestPowerOfTwo(7));        // prints 16
        Debug.Log(Mathf.ClosestPowerOfTwo(19));
    }
}
```
