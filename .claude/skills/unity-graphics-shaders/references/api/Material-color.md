<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Material-color.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The main color property of the Material.

By default, Unity considers a color with the property name name `"_Color"` to be the main color. Use the `[MainColor]` ShaderLab Properties attribute to make Unity consider a color with a different property name to be the main color.

This is the same as calling GetColor or SetColor with the property name of the main color as a parameter.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    // Fade the color from red to green
    // back and forth over the defined duration    Color colorStart = Color.red;
    Color colorEnd = Color.green;
    float duration = 1.0f;
    Renderer rend;    void Start()
    {
        rend = GetComponent<Renderer> ();
    }    void Update()
    {
        float lerp = Mathf.PingPong(Time.time, duration) / duration;
        rend.material.color = Color.Lerp(colorStart, colorEnd, lerp);
    }
}
```
