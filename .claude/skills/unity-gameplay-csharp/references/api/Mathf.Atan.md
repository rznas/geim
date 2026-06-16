<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Mathf.Atan.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| f | Value to compute the arc-tangent for, in the range [-Infinity, Infinity]. |

### Returns

**float** Angle in radians whose tangent equals `f`, in the range [-Pi/2, Pi/2].

### Description

Returns the arc-tangent of `f` - the angle in radians whose tangent is `f`.

For values of `f` outside of the [-1,1] range, this function will return NaN.

Additional resources: Tan, Atan2.

```csharp
using UnityEngine;public class ScriptExample : MonoBehaviour
{
    void Start()
    {
        // Prints -1.570796
        Debug.Log(Mathf.Atan(-Mathf.Infinity));
        // Prints -0.7853982
        Debug.Log(Mathf.Atan(-1));
        // Prints 0
        Debug.Log(Mathf.Atan(0));
        // Prints 0.7853982
        Debug.Log(Mathf.Atan(1));
        // Prints 1.570796
        Debug.Log(Mathf.Atan(Mathf.Infinity));
    }
}
```
