<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.ReflectionCubemapCompression.Auto.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Baked Reflection cubemap will be compressed if compression format is suitable.

Some texture compression formats produce bad wrapping artifacts when used on cubemaps, for example PVRTC. On platforms that use these formats, baked reflection cubemaps will be left uncompressed.

**Note**: PVRTC format is deprecated. Use ASTC or ETC format instead.
