<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.CommandBuffer.DrawOcclusionMesh.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| normalizedCamViewport | The viewport of the camera currently being rendered. |

### Description

Adds a command onto the commandbuffer to draw the VR Device's occlusion mesh to the current render target.

Commands in the rendering command buffer are lower-level graphics operations that can be sequenced in scripting. This command in particular is used to render an occlusion mesh provided by the active VR Device. Call this method before other rendering methods to prevent rendering of objects that are outside the VR device's visible regions.

Additional resources: XRSettings.useOcclusionMesh and XRSettings.occlusionMaskScale
