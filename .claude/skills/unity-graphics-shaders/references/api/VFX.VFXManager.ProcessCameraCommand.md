<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/VFX.VFXManager.ProcessCameraCommand.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| cam | The Camera to process the VFX commands for. |
| cmd | The CommandBuffer to push commands to (can be null). |
| camXRSettings | The XR settings that the Visual Effect Graph uses to process the Camera commands. |
| results | The CullingResults for the current camera, used to cull per-camera VFX commands. |
| customPassResults | Additional CullingResults coming from custom passes, if any. |

### Description

Use this method to process per-Camera VFX commands for the current frame.

The current Scriptable Render Pipeline implementation is responsible for calling this function. The High Definition and Universal Render Pipelines implement this call but you must do it manually if you create your own Scriptable Render Pipeline.

Additional resources: VFXManager.PrepareCamera.
