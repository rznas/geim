<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/VFX.VFXManager.PrepareCamera.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| cam | The Camera to prepare for processing VFX commands. |
| camXRSettings | The XR settings that the Visual Effect Graph uses to prepare the Camera. |

### Description

Use this method to prepare per-Camera VFX commands for this frame.

This function updates Materials that the VisualEffect uses internally, but does not execute any rendering commands. To execute rendering commands, call VFXManager.ProcessCamera.

Scriptable Render Pipelines (SRP) are responsible for calling this function. The High Definition and Universal Render Pipelines implement this call.

If you create your own SRP, you should typically call this function before culling.
