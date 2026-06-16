<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TextureWrapMode.MirrorOnce.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Mirrors the texture once, then clamps to edge pixels.

This effectively mirrors the texture around zero UV coordinates, and repeats edge pixel values when outside of [-1..1] range.

This mode is called "mirror and clamp to edge" in graphics APIs like Vulkan, Metal and OpenGL. This feature is not always supported when using OpenGL ES and Vulkan graphics APIs, specifically on ARM and Qualcomm GPUs platforms. Check SystemInfo.supportsTextureWrapMirrorOnce to figure out whether the system is capable..

Additional resources: Texture.wrapMode, texture assets, SystemInfo.supportsTextureWrapMirrorOnce.
