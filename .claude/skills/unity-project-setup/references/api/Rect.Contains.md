<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rect.Contains.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| point | Point to test. |
| allowInverse | Does the test allow the Rect's width and height to be negative? |

### Returns

**bool** True if the point lies within the specified rectangle.

### Description

Returns true if the `x` and `y` components of `point` is a point inside this rectangle. If `allowInverse` is present and true, the width and height of the Rect are allowed to take negative values (ie, the min value is greater than the max), and the test will still work.

```csharp
using UnityEngine;public class RectExample : MonoBehaviour
{
    void Update()
    {
        Rect rect = new Rect(0, 0, 150, 150);
        if (rect.Contains(Input.mousePosition))
            Debug.Log("Inside");
    }
}
```
