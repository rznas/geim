<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Light-color.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Specifies the color emitted by the light.

To modify the light intensity you change the light's color luminance. Lights always add illumination, so a light with a black color is the same as no light at all.

For more information, refer to Light component.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    Light lt;    void Start()
    {
        lt = GetComponent<Light>();
    }    // Darken the light completely over a period of 2 seconds.
    void Update()
    {
        lt.color -= (Color.white / 2.0f) * Time.deltaTime;
    }
}
```

Another example:

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    // Interpolate light color between two colors back and forth
    float duration = 1.0f;
    Color color0 = Color.red;
    Color color1 = Color.blue;    Light lt;    void Start()
    {
        lt = GetComponent<Light>();
    }    void Update()
    {
        // set light color
        float t = Mathf.PingPong(Time.time, duration) / duration;
        lt.color = Color.Lerp(color0, color1, t);
    }
}
```
