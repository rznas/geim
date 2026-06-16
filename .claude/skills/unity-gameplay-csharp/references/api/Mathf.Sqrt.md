<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Mathf.Sqrt.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| f | Real number whose square root to calculate. |

### Returns

**float** Real number whose square is `f`.

### Description

Returns square root of `f` (real number whose square equals `f`).

When used with negative values, the output will be equal to NaN.

```csharp
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    // The formula made famous by Pythagoras, also used internally by
    // Vector3.Distance and several other standard functions.
    float HypotenuseLength(float sideALength, float sideBLength)
    {
        return Mathf.Sqrt(sideALength * sideALength + sideBLength * sideBLength);
    }
}
```
