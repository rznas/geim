<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Mathf.Tan.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| f | The input angle, in radians. |

### Returns

**float** The return value in the range (-Infinity, Infinity).

### Description

Returns the tangent of angle `f` in radians.

The tangent trigonometric function has two properties than are worth considering: - It has two vertical asymptotes at `f` = ±π/2. This means that when approaching these `f` values, the output of the function will grow towards ±Infinity (without ever reaching them). - It is periodic at π intervals, which means that the output for a value `f` will be the same than the output for value `f` + π (or 2π, 3π, etc.) 

Additional resources: Cos, Sin.

```csharp
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    void Example()
    {
        // Prints 2.287733E+07
        Debug.Log(Mathf.Tan(-Mathf.PI / 2.0f));
        // Prints 0
        Debug.Log(Mathf.Tan(0.0f));
        // Prints 2.287733E+07
        Debug.Log(Mathf.Tan(Mathf.PI / 2.0f));
        // Prints 1        
        Debug.Log(Mathf.Tan(Mathf.PI / 4.0f));
        // Prints 1
        Debug.Log(Mathf.Tan(Mathf.PI + Mathf.PI / 4.0f));
    }
}
```
