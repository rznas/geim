<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SystemInfo-supportsSetConstantBuffer.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Does the current renderer support binding constant buffers directly? (Read Only)

Methods such as Shader.SetConstantBuffer and Material.SetConstantBuffer allow overriding all shader parameters that reside in a given constant buffer with a custom GfxBuffer. This property returns true if the currently active renderer supports binding constant buffers. It returns false if the render does not support such bindings.
