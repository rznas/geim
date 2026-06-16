<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ExpressionEvaluator.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Evaluates simple math expressions; supports int / float and operators: + - * / % ^ ( ).

This class has a single generic static method Evaluate, that evaluates a mathematical expression and returns the result.

Supported number types are: `int`, `float`, `long`, `double`.

The expressions that can be evaluated support:

- arithmetic operators `a+b`, `a-b`, `a*b`, `a/b`,
- power (`a^b`) and modulo (`a%b`) operators,
- parentheses,
- math functions `sqrt(a)`, `floor(a)`, `ceil(a)`, `round(a)`,
- trigonometic functions `cos(a)`, `sin(a)`, `tan(a)` (argument expressed in radians), and a constant `pi`.

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

### Static Methods

| Method | Description |
| --- | --- |
| Evaluate | Evaluates a math expression and returns the result. |
