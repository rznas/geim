<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Mathf.Abs.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| f | Real number whose absolute value will be returned. |

### Returns

**float** Non-negative value of `f`.

### Description

Returns the absolute value of `f`.

For a real number `f`, its absolute value is defined as the non-negative value of `f` without regard to its sign.

Additional resources: Sign.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void Start()
    {
        // Prints 10
        Debug.Log(Mathf.Abs(-10.0f));
        // Prints 0
        Debug.Log(Mathf.Abs(0.0f));
        // Prints 10
        Debug.Log(Mathf.Abs(10.0f));
    }
}
```

### Parameters

| Parameter | Description |
| --- | --- |
| value | Integer number whose absolute value will be returned. |

### Returns

**int** Non-negative value of `value`.

### Description

Returns the absolute value of `value`.

For an integer number `value`, its absolute value is defined as its non-negative value without regard to its sign.

Additional resources: Sign.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void Start()
    {
        // Prints 10
        Debug.Log(Mathf.Abs(-10));
        // Prints 0
        Debug.Log(Mathf.Abs(0));
        // Prints 10
        Debug.Log(Mathf.Abs(10));
    }
}
```
