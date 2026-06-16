<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LightTransport.PostProcessing.RadeonRaysProbePostProcessor.ScaleSphericalHarmonicsL2.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| context | Device context. |
| shIn | Source buffer of SphericalHarmonicsL2 probes to scale. |
| shOut | Destination buffer where the scaled SphericalHarmonicsL2 probes are written. |
| probeCount | Number of SphericalHarmonicsL2 probes to scale. |
| scale | Scaling factor. |

### Returns

**bool** True if the operation was successfully added to the command queue on the context.

### Description

Scale an array of SphericalHarmonicsL2 probes element-wise.

shOut = shIn * scale.
