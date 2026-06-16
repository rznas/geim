<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SystemInfo-minConstantBufferOffsetAlignment.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

**Obsolete** - use SystemInfo.constantBufferOffsetAlignment instead. Minimum buffer offset (in bytes) when binding a constant buffer using Shader.SetConstantBuffer or Material.SetConstantBuffer.

If the currently active renderer supports binding constant buffers directly (see SystemInfo.supportsSetConstantBuffer), and supports binding constant buffers with an offset, this property specifies the minimum required alignment in bytes for the offset parameter given to Shader.SetConstantBuffer etc. If this property is 0, the current renderer only supports binding constant buffers at offset 0 (for example, DX11 devices that do not expose DX11.1 features).
