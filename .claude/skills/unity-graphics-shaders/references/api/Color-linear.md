<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Color-linear.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A color value in linear space converted from an sRGB value.

Colors are often expressed in sRGB color space. This property returns a color value in linear color space. Unity applies an inverse sRGB gamma curve transformation to get the value.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void Start()
    {
        Color newColor = new Color(0.3f, 0.4f, 0.6f);
        print(newColor.linear);
    }
}
```
