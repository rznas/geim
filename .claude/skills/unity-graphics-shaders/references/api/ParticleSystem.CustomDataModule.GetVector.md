<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystem.CustomDataModule.GetVector.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| stream | The name of the custom data stream to retrieve the curve from. |
| component | The component index to retrieve the curve for (0-3, mapping to the xyzw components of a Vector4 or float4). |

### Returns

**MinMaxCurve** The curve being used to generate custom data.

### Description

Get a MinMaxCurve, that is being used to generate custom data.

Additional resources: ParticleSystem.CustomDataModule.SetVector, ParticleSystem.GetCustomParticleData.
