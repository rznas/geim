<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Assertions.Assert.IsNotNull.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| value | The `Object` or `type` being checked for. |
| message | The string used to describe the Assert. |

### Description

Assert that the value is not null.

```csharp
using UnityEngine;
using UnityEngine.Assertions;public class AssertionExampleClass : MonoBehaviour
{
    MyClass myClassReference;    void Update()
    {
        // Make sure the myClassReference reference is set
        Assert.IsNotNull(myClassReference);
    }
}public class MyClass {}
```
