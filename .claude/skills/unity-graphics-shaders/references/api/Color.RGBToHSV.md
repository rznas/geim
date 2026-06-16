<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Color.RGBToHSV.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| rgbColor | An input color. |
| H | Output variable for hue. |
| S | Output variable for saturation. |
| V | Output variable for value. |

### Description

Calculates the hue, saturation and value of an RGB input color.

The H, S, and V are output in the range 0.0 to 1.0.

```csharp
using UnityEngine;// Display an RGBA as an HSVpublic class ExampleScript : MonoBehaviour
{
    void Start()
    {
        float H, S, V;        Color.RGBToHSV(new Color(0.9f, 0.7f, 0.1f, 1.0F), out H, out S, out V);
        Debug.Log("H: " + H + " S: " + S + " V: " + V);
    }
}
```
