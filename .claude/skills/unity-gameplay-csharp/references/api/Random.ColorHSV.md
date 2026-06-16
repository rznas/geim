<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Random.ColorHSV.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| hueMin | Minimum hue [0..1]. |
| hueMax | Maximum hue [0..1]. |
| saturationMin | Minimum saturation [0..1]. |
| saturationMax | Maximum saturation [0..1]. |
| valueMin | Minimum value [0..1]. |
| valueMax | Maximum value [0..1]. |
| alphaMin | Minimum alpha [0..1]. |
| alphaMax | Maximum alpha [0..1]. |

### Returns

**Color** A random color with HSV and alpha values in the (inclusive) input ranges. Values for each component are derived via linear interpolation of value.

### Description

Generates a random color from HSV and alpha ranges.

```csharp
using UnityEngine;public class ColorOnClick : MonoBehaviour
{
    void OnMouseDown()
    {
        // Pick a random, saturated and not-too-dark color
        GetComponent<Renderer>().material.color = Random.ColorHSV(0f, 1f, 1f, 1f, 0.5f, 1f);
    }
}
```
