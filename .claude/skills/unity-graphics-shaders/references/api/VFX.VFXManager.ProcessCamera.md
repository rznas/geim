<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/VFX.VFXManager.ProcessCamera.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| cam | The Camera to prepare for processing VFX commands. |

### Description

Use this method to prepare and process per-Camera VFX commands for this frame.

Scriptable Render Pipelines (SRP) are responsible for calling this function. The High Definition and Universal Render Pipelines implement this call but you must do it manually if you create your own SRP. This function is equivalent to VFXManager.PrepareCamera(cam) followed by VFXManager.ProcessCameraCommand(cam, null).
