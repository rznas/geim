<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystem.CustomDataModule.SetVectorComponentCount.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| stream | The name of the custom data stream to apply the curve to. |
| curveCount | The number of curves to generate data for. |

### Description

Specify how many curves are used to generate custom data for this stream.

Additional resources: ParticleSystem.CustomDataModule.GetVectorComponentCount, MinMaxCurve, ParticleSystem.GetCustomParticleData.

```csharp
using UnityEngine;
using System.Collections;[RequireComponent(typeof(ParticleSystem))]
public class ExampleClass : MonoBehaviour
{
    void Start()
    {
        ParticleSystem ps = GetComponent<ParticleSystem>();
        var customData = ps.customData;
        customData.enabled = true;        AnimationCurve curve = new AnimationCurve();
        curve.AddKey(0.0f, 0.0f);
        curve.AddKey(1.0f, 1.0f);        customData.SetMode(ParticleSystemCustomData.Custom1, ParticleSystemCustomDataMode.Vector);
        customData.SetVectorComponentCount(ParticleSystemCustomData.Custom1, 1);
        customData.SetVector(ParticleSystemCustomData.Custom1, 0, new ParticleSystem.MinMaxCurve(1.0f, curve));
    }
}
```
