<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Vector3-operator_add.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| a | The left operand of the addition. |
| b | The right operand of the addition. |

### Returns

**Vector3** A Vector3 initialized with the component-wise sum of the left and right operands.

### Description

Adds two three-dimensional vectors with component-wise addition.

Adds corresponding x,y,z components of the left and right Vector3 operands and returns a Vector3 initialized with those component sums as the result.

```csharp
// prints (5.0,7.0,9.0)using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    void Start()
    {
        print(new Vector3(1, 2, 3) + new Vector3(4, 5, 6));
    }
}
```
