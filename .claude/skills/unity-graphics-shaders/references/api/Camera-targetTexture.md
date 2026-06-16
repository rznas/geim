<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Camera-targetTexture.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Destination render texture.

Usually cameras render directly to screen, but for some effects it is useful to make a camera render into a texture. This is done by creating a RenderTexture object and setting it as targetTexture on the camera. The camera will then render into that texture.

When targetTexture is `null`, camera renders to screen.

When rendering into a texture, the camera always renders into the whole texture; effectively rect and pixelRect are ignored.

It is also possible to make camera render into separate RenderBuffers, or into multiple textures at once, using SetTargetBuffers function.

Additional resources: RenderTexture, SetTargetBuffers.
