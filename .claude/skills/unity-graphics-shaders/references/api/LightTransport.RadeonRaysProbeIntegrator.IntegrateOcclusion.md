<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LightTransport.RadeonRaysProbeIntegrator.IntegrateOcclusion.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| context | The IDeviceContext to use for computation and memory operations. |
| positionOffset | Offset measured from the beginning of the probe position buffer. |
| positionCount | Number of probes to integrate. |
| sampleCount | Number of samples to take. |
| maxLightsPerProbe | Maximum number of lights per probe. The value must be 4. |
| perProbeLightIndices | The BufferSlice containing the per probe light indices. |
| probeOcclusionEstimateOut | The BufferSlice to write the probe occlusion estimate into. The size of the buffer in bytes should be maxLightsPerProbe * sizeof(float). |

### Returns

**Result** Return code.

### Description

Integrate occlusion.

The integrator does spherical sampling for each probe position. Occlusion is 1 if all rays hit front-facing triangles or the sky. Occlusion is 0 if all rays hit back-facing triangles.

Additional resources: InputExtraction.ComputeOcclusionLightIndicesFromBakeInput.
