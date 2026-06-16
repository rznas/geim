<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/RenderTexture.ResolveAntiAliasedSurface.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| target | The render texture to resolve into. If set, the target render texture must have the same dimensions and format as the source. |

### Description

Force an antialiased render texture to be resolved.

If an antialiased render texture has the bindTextureMS flag set, it will not be automatically resolved. Sometimes, it's useful to have both the resolved and the unresolved version of the texture at different stages of the pipeline. If the target parameter is omitted, the render texture will be resolved into itself.
