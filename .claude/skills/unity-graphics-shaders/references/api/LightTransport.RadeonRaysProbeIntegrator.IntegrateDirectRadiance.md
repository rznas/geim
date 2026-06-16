<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LightTransport.RadeonRaysProbeIntegrator.IntegrateDirectRadiance.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| context | Device context. |
| positionOffset | Offset measured from the beginning of the probe position buffer. |
| positionCount | Number of probes to integrate. |
| sampleCount | Number of samples to take. |
| ignoreEnvironment | Ignore environment lighting when computing direct contribution. |
| radianceEstimateOut | BufferSlice to write the radiance estimate into. |

### Returns

**void** Return code.

### Description

Integrate direct radiance.

The integrator does spherical sampling of incoming direct radiance for each probe position.
