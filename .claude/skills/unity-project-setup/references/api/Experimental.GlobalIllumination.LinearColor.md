<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Experimental.GlobalIllumination.LinearColor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Contains normalized linear color values for red, green, blue in the range of 0 to 1, and an additional intensity value.

Additional resources: Color

```csharp
using UnityEngine;
using UnityEngine.Experimental.GlobalIllumination;public class LinearColorExample : MonoBehaviour
{
    void Start()
    {
        // Initialize by setting each component
        LinearColor linearColor = default(LinearColor);
        linearColor.red = 1f;
        linearColor.green = 0.5f;
        linearColor.blue = 0f;
        linearColor.intensity = 16f;        // Get normalized linear color from UnityEngine.Color
        // The conversion doesn't take the alpha component into account
        LinearColor covertedColor = LinearColor.Convert(new Color(1f, 0.5f, 0f, 0.5f), intensity : 16f);
    }
}
```

### Properties

| Property | Description |
| --- | --- |
| blue | The blue component in the range of 0.0 to 1.0. |
| green | The green component in the range of 0.0 to 1.0. |
| intensity | The intensity value used to scale the red, green and blue component. |
| red | The red component in the range of 0.0 to 1.0. |

### Static Methods

| Method | Description |
| --- | --- |
| Black | Returns a black color. |
| Convert | Converts a Light's color value to a normalized linear color value, automatically handling gamma conversion if necessary. |
