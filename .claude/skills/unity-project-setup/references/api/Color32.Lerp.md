<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Color32.Lerp.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| a | The start color, returned when t = 0. |
| b | The end color, returned when t = 1. |
| t | The interpolation ratio. Will be clamped to the range [0; 1]. |

### Returns

**Color32** The color resulting from linear interpolation between and `a` and `b`.

### Description

Linearly interpolates between colors `a` and `b` using the interpolation ratio `t`.

`t` is clamped to be between 0 and 1. When `t` is 0, the function returns `a`. When `t` is 1, the function returns `b`.

The code sample sets the color of a GameObject's material to a value between white and black, based on the amount of time that has elapsed.

```csharp
using UnityEngine;public class ColorLerp : MonoBehaviour
{
    Color32 lerpedColor = Color.white;
    Renderer renderer;    void Start()
    {
        renderer = GetComponent<Renderer>();
    }    void Update()
    {
        lerpedColor = Color32.Lerp(Color.white, Color.black, Mathf.PingPong(Time.time, 1));
        renderer.material.color = lerpedColor;
    }
}
```

Additional resources: LerpUnclamped.
