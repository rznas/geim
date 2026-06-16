<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystem.CustomDataModule.SetMode.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| stream | The name of the custom data stream to enable data generation on. |
| mode | The type of data to generate. |

### Description

Choose the type of custom data to generate for the chosen data stream.

Additional resources: ParticleSystem.CustomDataModule.GetMode, ParticleSystem.GetCustomParticleData.

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
        customData.SetColor(ParticleSystemCustomData.Custom1, grad);        AnimationCurve curve = new AnimationCurve();
        curve.AddKey(0.0f, 0.0f);
        curve.AddKey(1.0f, 1.0f);        customData.SetMode(ParticleSystemCustomData.Custom2, ParticleSystemCustomDataMode.Vector);
        customData.SetVectorComponentCount(ParticleSystemCustomData.Custom2, 1);
        customData.SetVector(ParticleSystemCustomData.Custom2, 0, new ParticleSystem.MinMaxCurve(1.0f, curve));
    }
}
```
