<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.ScriptableRenderContext.Cull.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| parameters | Parameters for culling. |

### Returns

**CullingResults** Culling results.

### Description

Performs culling based on the ScriptableCullingParameters typically obtained from the Camera currently being rendered.

Culling results are bound to a ScriptableRenderContext they will be used with; memory used by culling results is released once the render loop is finished..

Additional resources: Camera.TryGetCullingParameters.
