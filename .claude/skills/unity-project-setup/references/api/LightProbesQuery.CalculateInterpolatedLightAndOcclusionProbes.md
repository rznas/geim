<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LightProbesQuery.CalculateInterpolatedLightAndOcclusionProbes.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| positions | The array of world space positions used to evaluate the probes. |
| tetrahedronIndices | The array of tetrahedron indices that guide interpolation. Start with values of 0 and reuse results between frames for faster lookup. |
| lightProbes | The array of light probes where the resulting lighting is written to. |
| occlusionProbes | The array of occlusion probes where the resulting occlusion is written to. |

### Description

Calculate light probes and occlusion probes at the given world space positions.
