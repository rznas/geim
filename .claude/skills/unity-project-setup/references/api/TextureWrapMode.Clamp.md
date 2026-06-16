<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TextureWrapMode.Clamp.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Clamps the texture to the last pixel at the edge.

This is useful for preventing wrapping artifacts when mapping an image onto an object and you don't want the texture to tile. UV coordinates will be clamped to the range 0...1. When UVs are larger than 1 or smaller than 0, the last pixel at the border will be used.

This mode is called "clamp to edge" in graphics APIs like Vulkan, Metal and OpenGL.

Additional resources: Texture.wrapMode, texture assets.
