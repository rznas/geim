<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Assertions.Assert.AreNotApproximatelyEqual.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| tolerance | Tolerance of approximation. |
| expected | The assumed Assert value. |
| actual | The exact Assert value. |
| message | The string used to describe the Assert. |

### Description

Asserts that the values are approximately not equal.

An absolute error check is used for approximate equality check (|a-b| < tolerance). Default tolerance is 0.00001f.

```csharp
using UnityEngine;
using UnityEngine.Assertions;public class AssertionExampleClass : MonoBehaviour
{
    Rigidbody rb;    void Update()
    {
        // Make sure the rigidbody never stops.
        // AreNotApproximatelyEqual should be used for comparing floating point variables.
        // Unless specified, default error tolerance will be used.
        Assert.AreNotApproximatelyEqual(0.0f, rb.velocity.magnitude);
    }
}
```
