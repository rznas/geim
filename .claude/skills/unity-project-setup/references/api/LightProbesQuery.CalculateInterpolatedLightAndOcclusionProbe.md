<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LightProbesQuery.CalculateInterpolatedLightAndOcclusionProbe.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| position | The world space position used to evaluate the probe. |
| tetrahedronIndex | Tetrahedron index that guides interpolation. Start with a value of 0 and reuse results between frames for faster lookup. |
| lightProbe | The light probe where the resulting lighting is written to. |
| occlusionProbe | The occlusion probe where the resulting occlusion is written to. |

### Description

Calculate light probe and occlusion probe at the given world space position.
