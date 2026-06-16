<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Mathf.Min.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| a | First value to compare. |
| b | Second value to compare. |
| values | Array of values to compare. |

### Returns

**float** Smallest value found between all compared values.

### Description

Returns the minimum of two or more values.

The resulting value will be the input value closest to '-Mathf.Infinity'.

Additional resources: Max.

```csharp
using UnityEngine;public class ScriptExample : MonoBehaviour
{
    void Start()
    {
        // Prints 0
        Debug.Log(Mathf.Min(0, Mathf.Infinity));
        // Prints -Infinity
        Debug.Log(Mathf.Min(0, -Mathf.Infinity));
        // Prints -Infinity
        Debug.Log(Mathf.Min(-Mathf.Infinity, Mathf.Infinity));
        // Prints -1
        Debug.Log(Mathf.Min(0, 1, 5, -1, 8, 10));
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

**void** Smallest value found between all compared values.

### Description

Returns the minimum of two or more values.

The resulting value will be the input value closest to 'int.MinValue'.

Additional resources: Max.

```csharp
using UnityEngine;public class ScriptExample : MonoBehaviour
{
    void Start()
    {
        // Prints 0
        Debug.Log(Mathf.Min(0, int.MaxValue));
        // Prints -2147483648
        Debug.Log(Mathf.Min(0, int.MinValue));
        // Prints -2147483648
        Debug.Log(Mathf.Min(int.MinValue, int.MaxValue));
        // Prints -1
        Debug.Log(Mathf.Min(0, 1, 5, -1, 8, 10));
    }
}
```
