<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Color.LerpUnclamped.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| a | The start color, returned when t = 0. |
| b | The end color, returned when t = 1. |
| t | The interpolation ratio. The ratio will not be clamped, and can be outside of the [0; 1] range. |

### Returns

**Color** The color resulting from linear interpolation between `a` and `b`.

### Description

Linearly interpolates between colors `a` and `b` using the interpolation ratio `t`.

`t` is clamped to be between 0 and 1. When `t` is 0, the function returns `a`. When `t` is 1, the function returns `b`.

If `t` is less than 0, or greater than 1, the result will be linearly extrapolated from `a` and `b`. For example, `Color.LerpUnclamped(new Color(0.0f, 0.0f, 0.0f), new Color(0.5f, 0.5f, 0.5f), 3.0f)` will return a color given by `new Color(1.5f, 1.5f, 1.5f)`.

The script below will set the color of MeshRenderer to the result of unclamped interpolation using parameters specified in the inspector. To use the script, attach it to a GameObject with a MeshRenderer.

```csharp
using UnityEngine;[RequireComponent(typeof(MeshRenderer))]
public class ColorLerp : MonoBehaviour
{
    public Color colorA = Color.white;
    public Color colorB = Color.red;
    public float interpolationRatio = 0.5f;    private Material material;    private void Start()
    {
        material = GetComponent<Renderer>().material;
    }    void Update()
    {
        material.color = Color.LerpUnclamped(colorA, colorB, interpolationRatio);
    }
}
```

Additional resources: Lerp.
