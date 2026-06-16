<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.ScriptableRenderContext.StartMultiEye.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| camera | Camera to enable stereo rendering on. |
| eye | The current eye to be rendered. |

### Description

Schedules a fine-grained beginning of stereo rendering on the ScriptableRenderContext.

Activates stereo rendering on the ScriptableRenderContext and `camera`. When used in conjunction with StopMultiEye, these APIs provide fine-grained control of which draw calls are multi-plexed for stereo purposes. For example, you would wrap your opaque and transparent passes with StartMultiEye and StopMultiEye, but you could exclude your shadow rendering.

Note that only draws are affected by this API. Compute work is not automatically adjusted for stereo, therefore, per-eye compute work must be manually generated.

Additional resources: StopMultiEye, SetupCameraProperties, StereoEndRender, CullingResults.GetCullingParameters.
