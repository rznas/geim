<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Mathf.Asin.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| f | Value to compute the arc-sine for, in the range [-1,1]. |

### Returns

**float** Angle in radians whose sine equals `f`, in the range [-Pi/2, Pi/2].

### Description

Returns the arc-sine of `f` - the angle in radians whose sine is `f`.

For values of `f` outside of the [-1,1] range, this function will return NaN.

Additional resources: Sin.

```csharp
using UnityEngine;public class ScriptExample : MonoBehaviour
{
    void Start()
    {
        // Prints NaN
        Debug.Log(Mathf.Asin(-1.0000001f));
        // Prints -1.570796
        Debug.Log(Mathf.Asin(-1));
        // Prints 0
        Debug.Log(Mathf.Asin(0));
        // Prints 1.570796
        Debug.Log(Mathf.Asin(1));
        // Prints NaN
        Debug.Log(Mathf.Asin(1.0000001f));
    }
}
```
