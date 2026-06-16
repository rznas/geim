<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Mesh.RecalculateUVDistributionMetrics.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| uvAreaThreshold | The minimum UV area to consider. The default value is 1e-9f. |

### Description

Recalculates the UV distribution metrics of the Mesh from the vertices and uv coordinates.

The UV distribution metric can be used to calculate the desired mipmap level based on the position of the camera. It's important to call this function after procedurally generating meshes that have textures that use Mip Map Streaming.

This function can also be used to update the UV distribution metric with an alternative uvAreaThreshold. The uvAreaThreshold can be used to ignore small UV areas from the UV distribution calculation; for example, you may wish to ignore a single texel colour used for a large triangle area. Unity will not consider the density of these areas when calculating mip selection, which may result in some colour tint due to lower mips being selected. The value depends on the texture resolution; for example, for a 256x256 texture, a single texel area would be (1/(256*256)).

Additional resources: Mip Map Streaming GetUVDistributionMetric, RecalculateUVDistributionMetric.
