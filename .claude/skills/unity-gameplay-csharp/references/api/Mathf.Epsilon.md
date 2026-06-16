<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Mathf.Epsilon.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The smallest positive non-zero value that a float can represent.

The value of `Mathf.Epsilon` is:

- 1.401298e-45f on platforms where flush-to-zero (FTZ) is disabled.
- 1.17549435E-38f on platforms where FTZ is enabled.

Using `Mathf.Epsilon` as a delta for equality makes the comparison effectively identical to exact equality on normal-range numbers. For an approximately equal value, use Mathf.Approximately or a tolerance that reflects your data’s scale, typically a combination of absolute and relative tolerances.

Operations with Epsilon follow these rules:

- anyValue + Epsilon = anyValue
- anyValue - Epsilon = anyValue
- 0 + Epsilon = Epsilon
- 0 - Epsilon = -Epsilon

A value between any number and Epsilon will result in an arbitrary number due to loss of trailing digits.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    // Avoid division by (near) zero using Mathf.Epsilon as a zero guard.
    float SafeDivide(float numerator, float denominator)
    {
        if (Mathf.Abs(denominator) <= Mathf.Epsilon)
            return 0f; // or handle appropriately        return numerator / denominator;
    }
}
```
