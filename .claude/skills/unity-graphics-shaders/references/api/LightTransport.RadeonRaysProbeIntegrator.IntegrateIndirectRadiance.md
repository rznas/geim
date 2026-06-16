<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LightTransport.RadeonRaysProbeIntegrator.IntegrateIndirectRadiance.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| context | The IDeviceContext to use for computation and memory operations. |
| positionOffset | Offset measured from the beginning of the probe position buffer. |
| positionCount | Number of probes to integrate. |
| sampleCount | The number of samples to take per probe. |
| ignoreEnvironment | If true, excludes environment lighting from the indirect contribution calculation. |
| radianceEstimateOut | Output BufferSlice that the indirect radiance estimate is written into, encoded as SphericalHarmonicsL2. |

### Returns

**void** Return code.

### Description

Integrates indirect lighting contribution at probe positions using spherical sampling and path tracing.

This method performs multi-bounce global illumination calculations by tracing rays from each probe position and accumulating light bounces through the scene. The number of bounces is controlled by the bounce count parameter set in Prepare. Higher sample counts and bounce counts significantly improve quality but increase computation time. Indirect radiance includes contribution from the following:

 - Light bounced off surfaces. - Light transmitted through transparent materials. - Illumination from emissive materials. - Multi-bounce environment lighting.
