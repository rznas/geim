<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystem.CustomDataModule.SetColor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| stream | The name of the custom data stream to apply the gradient to. |
| gradient | The gradient to be used for generating custom color data. |

### Description

Set a MinMaxGradient, in order to generate custom HDR color data.

Additional resources: ParticleSystem.CustomDataModule.GetColor, ParticleSystem.GetCustomParticleData.

```csharp
using UnityEngine;
using System.Collections;[RequireComponent(typeof(ParticleSystem))]
public class ExampleClass : MonoBehaviour
{
    void Start()
    {
        ParticleSystem ps = GetComponent<ParticleSystem>();
        var customData = ps.customData;
        customData.enabled = true;        Gradient grad = new Gradient();
        grad.SetKeys(new GradientColorKey[] { new GradientColorKey(Color.blue, 0.0f), new GradientColorKey(Color.red, 1.0f) }, new GradientAlphaKey[] { new GradientAlphaKey(1.0f, 0.0f), new GradientAlphaKey(0.0f, 1.0f) });        customData.SetMode(ParticleSystemCustomData.Custom1, ParticleSystemCustomDataMode.Color);
        customData.SetColor(ParticleSystemCustomData.Custom1, grad);
    }
}
```
