<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.BatchRendererGroup.GetConstantBufferMaxWindowSize.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**int** The maximum window size in bytes.

### Description

Defines the maxiumum amount (in bytes) the BatchRendererGroup constant buffer window size is visible from the shader.

The BatchRendererGroup API is different from SystemInfo.maxConstantBufferSize because it uses Universal Buffer Objects (UBOs) in a different way from other rendering paths. This means it requires different size and alignment constraints on GL platforms.
