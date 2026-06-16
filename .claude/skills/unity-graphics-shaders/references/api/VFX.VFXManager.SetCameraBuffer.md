<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/VFX.VFXManager.SetCameraBuffer.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| cam | The Camera to set the buffer for. |
| type | The type of buffer to set. |
| buffer | The buffer to set. |
| x | X offset of the viewport in the buffer. |
| y | Y offset of the viewport in the buffer. |
| width | Width of the viewport in the buffer. |
| height | Height of the viewport in the buffer. |

### Description

Use this method to set the buffer of a given type for this Camera. This allows the VFX Manager to use the buffer.

In custom Scriptable Render Pipelines, this buffer allows the VFXManager to use buffer behaviors for the Camera, for example depth collisions. The buffer must be available during the VFX update of the next frame. To query the need for a buffer, call VFXManager.IsCameraBufferNeeded.
