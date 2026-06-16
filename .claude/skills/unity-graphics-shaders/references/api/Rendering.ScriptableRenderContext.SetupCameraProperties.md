<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.ScriptableRenderContext.SetupCameraProperties.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| camera | Camera to setup shader variables for. |
| stereoSetup | Set up the stereo shader variables and state. |
| eye | The current eye to be rendered. |

### Description

Schedules the setup of Camera specific global Shader variables.

This function sets up view, projection and clipping planes global shader variables.

Additionally, if `stereoSetup` is set to true, and single-pass stereo is enabled, stereo-specific shader variables and state are configured.

Additional resources: StartMultiEye, StopMultiEye, StereoEndRender, CullingResults.GetCullingParameters.
