<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Assertions.Assert.IsTrue.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| message | The string used to describe the Assert. |
| condition | `true` or `false`. |

### Description

Asserts that the condition is true.

```csharp
using UnityEngine;
using UnityEngine.Assertions;public class AssertionExampleClass : MonoBehaviour
{
    int i = 0;    void Update()
    {
        // announce if i is larger than zero
        Assert.IsTrue(i > 0);        // announce if i is zero
        Assert.IsFalse(i == 0);
    }
}
```
