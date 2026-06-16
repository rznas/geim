<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/NVIDIA.GraphicsDevice.ExecuteDLSS.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| cmd | The rendering command buffer to record commands into. This call does not execute the command buffer, you must execute the command buffer yourself at any time after this call. |
| dlssContext | The source feature context to execute. You must set the parameters for this command in the DLSSContext object prior to this call. |
| textures | The texture table, where inputs / outputs are specified for DLSS to execute. |

### Description

Records the execution of DLSS into a rendering command buffer. This call does not execute the command buffer, it only appends custom commands into it.
