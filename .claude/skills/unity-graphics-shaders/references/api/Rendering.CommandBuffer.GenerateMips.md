<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.CommandBuffer.GenerateMips.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| rt | The render texture requiring mipmaps generation. |

### Description

Generate mipmap levels of a render texture.

Use this function to manually re-generate mipmap levels of a render texture. The render texture has to have mipmaps (useMipMap set to true), and automatic mip generation turned off (autoGenerateMips set to false).

On some platforms (most notably, D3D9), there is no way to manually generate render texture mip levels; in these cases this function does nothing.

Additional resources: useMipMap, autoGenerateMips.
