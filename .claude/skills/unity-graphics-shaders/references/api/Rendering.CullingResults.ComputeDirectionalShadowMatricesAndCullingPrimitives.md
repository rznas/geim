<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.CullingResults.ComputeDirectionalShadowMatricesAndCullingPrimitives.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| activeLightIndex | The index into the active light array. |
| splitIndex | The cascade index. |
| splitCount | The number of cascades. |
| splitRatio | The cascade ratios. |
| shadowResolution | The resolution of the shadowmap. |
| shadowNearPlaneOffset | The near plane offset for the light. |
| viewMatrix | The computed view matrix. |
| projMatrix | The computed projection matrix. |
| shadowSplitData | The computed cascade data. |

### Returns

**bool** If false, the shadow map for this cascade does not need to be rendered this frame.

### Description

Calculates the view and projection matrices and shadow split data for a directional light.

Additional resources: ShadowSplitData.
