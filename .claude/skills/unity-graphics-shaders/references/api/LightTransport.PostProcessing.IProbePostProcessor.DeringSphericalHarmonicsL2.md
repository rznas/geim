<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LightTransport.PostProcessing.IProbePostProcessor.DeringSphericalHarmonicsL2.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| context | Device context. |
| shIn | Source buffer to de-ring. |
| shOut | Destination buffer where the results are written. |
| probeCount | Number of SphericalHarmonicsL2 probes to de-ring. |

### Returns

**bool** True if the operation was successfully added to the command queue on the context.

### Description

De-ring an array of SphericalHarmonicsL2 probes.

Ringing is an artifact that can occur on light probes if they are subject to drastic changes in lighting. Light may overshoot and appear in the opposite end of the probe. This method can remove ringing on probes, but might reduce overall contrast.
