<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystem.CustomDataModule.SetVector.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| stream | The name of the custom data stream to apply the curve to. |
| component | The component index to apply the curve to (0-3, mapping to the xyzw components of a Vector4 or float4). |
| curve | The curve to be used for generating custom data. |

### Description

Set a MinMaxCurve, in order to generate custom data.

Additional resources: ParticleSystem.CustomDataModule.GetVector, ParticleSystem.GetCustomParticleData.

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
