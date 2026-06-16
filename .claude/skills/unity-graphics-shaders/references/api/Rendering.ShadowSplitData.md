<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.ShadowSplitData.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Describes the culling information for a given shadow split (e.g. directional cascade).

### Static Properties

| Property | Description |
| --- | --- |
| maximumCullingPlaneCount | The maximum number of culling planes. |

### Properties

| Property | Description |
| --- | --- |
| cullingMatrix | The model view projection matrix Unity uses to cull objects it renders into this shadow map. |
| cullingNearPlane | The near plane distance that Unity uses to cull objects. Unity transforms the objects with ShadowSplitData.cullingMatrix, and then culls the ones that are farther than the near plane distance. |
| cullingPlaneCount | The number of culling planes. |
| cullingSphere | The culling sphere. The first three components of the vector describe the sphere center, and the last component specifies the radius. |
| shadowCascadeBlendCullingFactor | A multiplier applied to the radius of the culling sphere.Values must be in the range 0 to 1. With higher values, Unity culls more objects. Lower makes the cascades share more rendered objects. Using lower values allows blending between different cascades as they then share objects. |

### Public Methods

| Method | Description |
| --- | --- |
| GetCullingPlane | Gets a culling plane. |
| SetCullingPlane | Sets a culling plane. |
