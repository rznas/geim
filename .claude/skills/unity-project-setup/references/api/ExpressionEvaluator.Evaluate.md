<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ExpressionEvaluator.Evaluate.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| expression | A string containing a mathematical expression (e.g. "4+3"). |
| value | The result of the expression evaluation. Supported types are: `int`, `float`, `long`, `double`. |

### Returns

**bool** Indicates whether expression could be evauated successfully.

### Description

Evaluates a math expression and returns the result.

The expressions that can be evaluated support:

- arithmetic operators `a+b`, `a-b`, `a*b`, `a/b`,
- power (`a^b`) and modulo (`a%b`) operators,
- parentheses,
- math functions `sqrt(a)`, `floor(a)`, `ceil(a)`, `round(a)`,
- trigonometic functions `cos(a)`, `sin(a)`, `tan(a)` (argument expressed in radians), and a constant `pi`.

If the expression can not be evaluated, the function returns `false` and the result value is set to zero.

```csharp
using UnityEditor;
using UnityEngine;public class ExampleScript : MonoBehaviour
{
    [MenuItem("Example/Int Expression")]
    public static void IntExample()
    {
        ExpressionEvaluator.Evaluate("2+3", out int result);
        // prints 5
        Debug.Log(result);
    }    [MenuItem("Example/Float Expression")]
    public static void FloatExample()
    {
        ExpressionEvaluator.Evaluate("sqrt(cos(pi/3))", out float result);
        // prints 0.7071068
        Debug.Log(result);
    }
}
```
