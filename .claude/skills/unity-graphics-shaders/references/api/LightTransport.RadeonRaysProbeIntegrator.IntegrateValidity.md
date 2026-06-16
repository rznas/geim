<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LightTransport.RadeonRaysProbeIntegrator.IntegrateValidity.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| context | IDeviceContext for computation and memory operations. |
| positionOffset | Offset measured from the beginning of the probe position buffer. |
| positionCount | Number of probes to integrate. |
| sampleCount | Number of samples to take. |
| validityEstimateOut | BufferSlice to write the validity estimate into. |

### Returns

**Result** Return code.

### Description

Integrate validity.

The integrator does spherical sampling for each probe position. Validity is 1 if all rays hit front-facing triangles or the sky. Validity is 0 if all rays hit back-facing triangles.
