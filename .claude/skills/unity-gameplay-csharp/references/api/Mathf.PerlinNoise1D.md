<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Mathf.PerlinNoise1D.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| x | The X-coordinate of the given sample point. |

### Returns

**float** A value in the range of 0.0 and 1.0. The value might be slightly higher or lower than this range.

### Description

Generates a 1D pseudo-random pattern of float values across a 2D plane.

Although the noise plane is two-dimensional, you can use a single one-dimensional line through the pattern to good effect, for example for animation effects. The result of PerlinNoise1D(x) is equivalent to PerlinNoise(x, 0), but the former is faster.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    // "Bobbing" animation from 1D Perlin noise.    // Range over which height varies.
    float heightScale = 1.0f;    // Distance covered per second along X axis of Perlin plane.
    float xScale = 1.0f;
    void Update()
    {
        float height = heightScale * Mathf.PerlinNoise1D(Time.time * xScale);
        Vector3 pos = transform.position;
        pos.y = height;
        transform.position = pos;
    }
}
```

**Note:** It is possible for the return value to be slightly less than 0.0f or slightly exceed 1.0f. You may need to clamp the return value if the 0.0 to 1.0 range is important to you.
