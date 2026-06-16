<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.SphericalHarmonicsL2.Evaluate.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| directions | Array of normalized directions in which to evaluate the spherical harmonics. |
| results | Output array for the evaluated values. The order of the results is the same as the directions array. |

### Description

Evaluates the spherical harmonics for each given direction. The `directions` and `results` arrays must have the same size.

```csharp
using System.Collections;
using UnityEngine;public class ExampleClass : MonoBehaviour
{
    void Start()
    {
        UnityEngine.Rendering.SphericalHarmonicsL2 sh2;
        LightProbes.GetInterpolatedProbe(new Vector3(0.0f, 0.0f, 0.0f), null, out sh2);        Vector3[] directions = new Vector3[]
        {
            new Vector3(0.0f, 1.0f, 0.0f),
            new Vector3(0.0f, -1.0f, 0.0f)
        };
        Color[] results = new Color[2];        sh2.Evaluate(directions, results);
    }
}
```
