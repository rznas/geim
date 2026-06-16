<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.CullingResults.ComputeSpotShadowMatricesAndCullingPrimitives.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| activeLightIndex | The index into the active light array. |
| viewMatrix | The computed view matrix. |
| projMatrix | The computed projection matrix. |
| shadowSplitData | The computed split data. |

### Returns

**bool** If false, the shadow map for this light does not need to be rendered this frame.

### Description

Calculates the view and projection matrices and shadow split data for a spot light.

Additional resources: ShadowSplitData.
