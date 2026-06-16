<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Mathf.Max.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| a | First value to compare. |
| b | Second value to compare. |
| values | Array of values to compare. |

### Returns

**float** Greatest value found between all compared values.

### Description

Returns the maximum of two or more values.

The resulting value will be the input value closest to 'Mathf.Infinity'.

Additional resources: Min.

```csharp
using UnityEngine;public class ScriptExample : MonoBehaviour
{
    void Start()
    {
        // Prints Infinity
        Debug.Log(Mathf.Max(0, Mathf.Infinity));
        // Prints 0
        Debug.Log(Mathf.Max(0, -Mathf.Infinity));
        // Prints Infinity
        Debug.Log(Mathf.Max(-Mathf.Infinity, Mathf.Infinity));
        // Prints 10
        Debug.Log(Mathf.Max(0, 1, 5, -1, 8, 10));
    }
}
```

### Parameters

| Parameter | Description |
| --- | --- |
| a | First value to compare. |
| b | Second value to compare. |
| values | Array of values to compare. |

### Returns

**void** Greatest value found between all compared values.

### Description

Returns the maximum of two or more values.

The resulting value will be the input value closest to 'int.MaxValue'.

Additional resources: Min.

```csharp
using UnityEngine;public class ScriptExample : MonoBehaviour
{
    void Start()
    {
        // Prints 2147483647
        Debug.Log(Mathf.Max(0, int.MaxValue));
        // Prints 0
        Debug.Log(Mathf.Max(0, int.MinValue));
        // Prints 2147483647
        Debug.Log(Mathf.Max(int.MinValue, int.MaxValue));
        // Prints 10
        Debug.Log(Mathf.Max(0, 1, 5, -1, 8, 10));
    }
}
```
