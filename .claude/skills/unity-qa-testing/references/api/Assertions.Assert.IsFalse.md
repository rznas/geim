<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Assertions.Assert.IsFalse.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| condition | `true` or `false`. |
| message | The string used to describe the result of the `Assert`. |

### Description

Return `true` when the condition is false. Otherwise return `false`.

```csharp
using UnityEngine;
using UnityEngine.Assertions;public class AssertionExampleClass : MonoBehaviour
{
    GameObject go;    void Update()
    {
        // Make sure the Game Object is never in active state
        Assert.IsFalse(go.activeSelf);
    }
}
```
