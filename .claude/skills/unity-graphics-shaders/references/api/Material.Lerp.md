<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Material.Lerp.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Interpolate properties between two materials.

Makes all color and float values of a material be interpolated from `start` to `end`, based on `t`.
 When `t` is 0, all values are taken from `start`.
 When `t` is 1, all values are taken from `end`.

Most often you want the materials that are interpolated between to be the same (use the same shaders and textures) except for colors and floats. Then you use `Lerp` to blend between them.

Additional resources: Materials.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    // Blends between two materials    Material material1;
    Material material2;
    float duration = 2.0f;
    Renderer rend;    void Start()
    {
        rend = GetComponent<Renderer> ();        // At start, use the first material
        rend.material = material1;
    }    void Update()
    {
        // ping-pong between the materials over the duration
        float lerp = Mathf.PingPong(Time.time, duration) / duration;
        rend.material.Lerp(material1, material2, lerp);
    }
}
```
