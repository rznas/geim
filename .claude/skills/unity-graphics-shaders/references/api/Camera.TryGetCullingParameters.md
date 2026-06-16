<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Camera.TryGetCullingParameters.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| cullingParameters | Resultant culling parameters. |
| stereoAware | Generate single-pass stereo aware culling parameters. |

### Returns

**bool** Flag indicating whether culling parameters are valid.

### Description

Get culling parameters for a camera.

Returns false if camera is invalid to render (empty viewport rectangle, invalid clip plane setup etc.).

Both left and right stereo eyes are considered in the generated culling parameters when `stereoAware` is `true` and single-pass stereo is enabled.

Additional resources: ScriptableRenderContext.Cull, ScriptableCullingParameters, ScriptableRenderContext.SetupCameraProperties, ScriptableRenderContext.StartMultiEye, ScriptableRenderContext.StopMultiEye, ScriptableRenderContext.StereoEndRender.
