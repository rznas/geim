<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Mathf.Acos.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| f | Value to compute the arc-cosine for, in the range [-1,1]. |

### Returns

**float** Angle in radians whose cosine equals `f`, in the range [0, Pi].

### Description

Returns the arc-cosine of `f` - the angle in radians whose cosine is `f`.

For values of `f` outside of the [-1,1] range, this function will return NaN.

Additional resources: Cos.

```csharp
using UnityEngine;public class ScriptExample : MonoBehaviour
{
    void Start()
    {
        // Prints NaN
        Debug.Log(Mathf.Acos(-1.0000001f));
        // Prints 3.141593
        Debug.Log(Mathf.Acos(-1));
        // Prints 1.570796
        Debug.Log(Mathf.Acos(0));
        // Prints 0
        Debug.Log(Mathf.Acos(1));
        // Prints NaN
        Debug.Log(Mathf.Acos(1.0000001f));
    }
}
```
