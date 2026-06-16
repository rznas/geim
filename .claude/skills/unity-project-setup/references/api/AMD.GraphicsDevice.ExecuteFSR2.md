<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AMD.GraphicsDevice.ExecuteFSR2.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| cmd | The rendering command buffer to record commands into. This call does not execute the command buffer. You must execute the command buffer yourself at any time after this call. |
| fsr2Context | The source feature context to execute. You must set the parameters for this command in the FSR2Context object prior to this call. |
| textures | The collection of textures represented by FSR2TextureTable, where inputs/outputs are specified for the FSR 2.0 pass to execute. |

### Description

Records the execution of the FSR2 pass into a rendering command buffer. This call does not execute the command buffer, it only appends custom commands into it.
