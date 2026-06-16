<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.ScriptableRenderContext.CullShadowCasters.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| cullingResults | Culling results to use. |
| infos | Shadow casters culling information. |

### Description

Performs shadow casters culling for all the visible lights.

This function schedules the shadow casters culling jobs. It is recommended to call this function as early as possible so that there is more room for the culling jobs to execute in the background. If you call this function, the fields ShadowDrawingSettings.splitData and ShadowDrawingSettings.projectionType are ignored by Unity. Those fields are already provided via ShadowCastersCullingInfos and then stored internally so that Unity can reuse them as needed.
