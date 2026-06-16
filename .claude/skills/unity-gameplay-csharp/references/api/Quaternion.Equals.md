<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Quaternion.Equals.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| other | The quaternion to compare with. |

### Returns

**bool** `true` if the quaternion components (x, y, z, w) are exactly equal.

### Description

Performs exact binary comparison of each Quaternion component (x, y, z, w).

The key comparison characteristics:

- Exact copies: Returns `true` when quaternions are identical copies.
- Floating-point precision: Returns `false` even for tiny differences due to floating-point arithmetic.
- Mathematically equivalent rotations: Returns `false` for rotations that represent the same orientation but have different component values.

For practical rotation comparison, consider using the `==` operator instead, which uses dot product with tolerance for approximate equality.

```csharp
using UnityEngine;public class QuaternionEqualsExample : MonoBehaviour
{ 
    void Start()
    {
        // Exact copies - Equals() returns true
        Quaternion q1 = Quaternion.identity;
        Quaternion q2 = q1;
        Debug.Log($"Exact copies - Equals(): {q1.Equals(q2)}"); // True
        
        // Small floating point differences - Equals() returns false
        Quaternion q3 = Quaternion.Euler(90f, 0f, 0f);
        Quaternion q4 = Quaternion.Euler(90.0001f, 0f, 0f);
        Debug.Log($"Small difference - Equals(): {q3.Equals(q4)}"); // False
        Debug.Log($"Small difference - == operator: {q3 == q4}");   // True (tolerance-based)
        
        // Combine both methods for robust comparison
        Debug.Log($"Combined check: {q3.Equals(q4) || (q3 == q4)}"); // True
    }
}
```
