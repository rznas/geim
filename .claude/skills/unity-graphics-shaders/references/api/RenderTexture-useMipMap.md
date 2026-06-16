<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/RenderTexture-useMipMap.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Render texture has mipmaps when this flag is set.

When set to `true`, rendering into this render texture will create and generate mipmap levels. By default render textures don't have mipmaps. This flag can be used only on render textures that have power-of-two size.

By default the mipmaps will be automatically generated. If you want to render into texture mip levels manually, set autoGenerateMips to false.

Additional resources: autoGenerateMips, GenerateMips.
