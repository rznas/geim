<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.BatchRendererGroup.GetConstantBufferOffsetAlignment.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**int** The alignment (in bytes) you should use to offset any data in the Uniform Buffer Object (UBO).

### Description

The BatchRendererGroup API is different from SystemInfo.constantBufferOffsetAlignment because it uses Universal Buffer Objects (UBOs) in a different way from other rendering paths. This means it requires different size and alignment constraints on GL platforms.
