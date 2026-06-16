<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LightTransport.PostProcessing.RadeonRaysProbePostProcessor.WindowSphericalHarmonicsL2.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| context | Device context. |
| shIn | Source buffer of irradiance light probes encoded as SphericalHarmonicsL2. |
| shOut | Destination buffer of the windowed spherical irradiance encoded as SphericalHarmonicsL2. |
| probeCount | Number of SphericalHarmonicsL2 probes to window. |

### Returns

**bool** True if the operation was successfully added to the command queue on the context.

### Description

Apply a windowing operation on an array of SphericalHarmonicsL2 probes.

Ringing is an artifact that can occur on light probes if they are subject to drastic changes in lighting. Light may overshoot and appear in the opposite end of the probe. This method is useful to reduce the artifact and its suggested use is to apply it on the direct part of the lighting before combining it with the indirect contribution.
