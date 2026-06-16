<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/RenderTexture-autoGenerateMips.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Mipmap levels are generated automatically when this flag is set.

When a render texture is with mipmaps (useMipMap), then by default rendering into it generates all the mipmap levels. The mipmap generation happens automatically only after rendering into this render texture; when active render target is switched to some other render texture.

If you want to render into mip levels manually, or control when mipmap generation happens (via GenerateMips), set this variable to false. Default value is true.

Additional resources: useMipMap, GenerateMips.
