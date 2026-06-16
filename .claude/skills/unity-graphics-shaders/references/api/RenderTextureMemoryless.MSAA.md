<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/RenderTextureMemoryless.MSAA.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Render texture color pixels are memoryless when RenderTexture.antiAliasing is set to 2, 4 or 8.

Note that memoryless render textures are only supported on iOS/tvOS 10.0+ Metal. Render textures are read/write protected and stored in CPU or GPU memory on other platforms.

Additional resources: RenderTexture.memorylessMode, RenderTexture.
