<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LightTransport.PostProcessing.IProbePostProcessor.ConvertToUnityFormat.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| context | Device context. |
| irradianceIn | Buffer containing input irradiance. |
| irradianceOut | Output buffer containing the irradiance array after the conversion to the format compatible with a Unity renderer. |
| probeCount | Number of SphericalHarmonicsL2 probes to convert. |

### Returns

**bool** True if the operation was successfully added to the command queue on the context.

### Description

Converts light probes encoded as SphericalHarmonicsL2 to the format expected by the Unity renderer.

The irradiance SphericalHarmonicsL2 light probes must satisfy the following conditions when used with a Unity renderer:

1. For L0 and L1, the coefficients must have the SH standard normalization terms folded into them (to avoid doing this multiplication in a shader).
2. The coefficients must be divided by Pi (π) for compatibility reasons.
3. L1 must be ordered as yzx (rather than xyz). The order is flipped back right before rendering in the GetShaderConstantsFromNormalizedSH function, before the SphericalHarmonicsL2 probes are passed to a shader.
