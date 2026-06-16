<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LightTransport.PostProcessing.IProbePostProcessor.ConvolveRadianceToIrradiance.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| context | Device context. |
| radianceIn | Source buffer of spherical radiance encoded as SphericalHarmonicsL2. |
| irradianceOut | Destination buffer of the convolved spherical irradiance encoded as SphericalHarmonicsL2. |
| probeCount | Number of SphericalHarmonicsL2 probes to convolve. |

### Returns

**bool** True if the operation was successfully added to the command queue on the context.

### Description

Convolve radiance to irradiance.

Convolve spherical radiance to irradiance on an array of SphericalHarmonicsL2.
