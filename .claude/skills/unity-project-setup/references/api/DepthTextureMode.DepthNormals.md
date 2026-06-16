<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/DepthTextureMode.DepthNormals.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Generate a depth + normals texture.

Will generate a screen-space depth and view space normals texture as seen from this camera. Texture will be in RenderTextureFormat.ARGB32 format and will be set as `_CameraDepthNormalsTexture` global shader property. Depth and normals will be specially encoded, see Camera Depth Texture page for details.

Additional resources: Using camera's depth textures, Camera.depthTextureMode.
