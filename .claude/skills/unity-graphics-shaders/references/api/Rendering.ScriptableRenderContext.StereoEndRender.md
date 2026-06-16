<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.ScriptableRenderContext.StereoEndRender.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| camera | Camera to indicate completion of stereo rendering. |
| eye | The current eye to be rendered. |

### Description

Schedule notification of completion of stereo rendering on a single frame.

Notify clients that stereo rendering has completed so they can begin any post-render work.

Additionally, this API will reset properties on the `camera` that had been affected by stereo rendering.

Additional resources: SetupCameraProperties, StartMultiEye, StopMultiEye, Camera.TryGetCullingParameters.
