<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Assertions.Assert.AreApproximatelyEqual.html
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

Assert the values are approximately equal.

An absolute error check is used for approximate equality check (|a-b| < /tolerance/). Default `tolerance` is 0.00001f.

Note: Every time you call the method with tolerance specified, a new instance of FloatComparer is created. For performance reasons you might want to instance your own comparer and pass it to the AreApproximatelyEqual method. If the tolerance is not specifies, a default comparer is used and the issue does not occur.

```csharp
using UnityEngine;
using UnityEngine.Assertions;public class AssertionExampleClass : MonoBehaviour
{
    void Update()
    {
        // Make sure the position of the GameObject is always in the center of the Scene.
        // AreApproximatelyEqual should be used for comparing floating point variables.
        // Unless specified, default error tolerance will be used.
        Assert.AreApproximatelyEqual(0.0f, transform.position.x);
        Assert.AreApproximatelyEqual(0.0f, transform.position.y);
        Assert.AreApproximatelyEqual(0.0f, transform.position.z);
    }
}
```
