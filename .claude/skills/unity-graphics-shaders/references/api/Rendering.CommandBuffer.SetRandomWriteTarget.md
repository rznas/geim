<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.CommandBuffer.SetRandomWriteTarget.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| index | Index of the random write target in the shader. |
| buffer | Buffer to set as the write target. |
| preserveCounterValue | Whether to leave the append/consume counter value unchanged. |
| rt | RenderTargetIdentifier to set as the write target. |

### Description

Set random write target for Shader Model 4.5 level pixel shaders.

This is the CommandBuffer equivalent of Graphics.SetRandomWriteTarget. The same limitations and exceptions apply to this call as to Graphics.SetRandomWriteTarget.
