<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Assertions.Assert.IsNull.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| value | The `Object` or `type` being checked for. |
| message | The string used to describe the Assert. |

### Description

Assert the value is null.

```csharp
using UnityEngine;
using UnityEngine.Assertions;public class AssertionExampleClass : MonoBehaviour
{
    MyClass myClassReference;    void Update()
    {
        // Make sure the myClassReference reference is never set
        Assert.IsNull(myClassReference);
    }
}public class MyClass {}
```
