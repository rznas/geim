<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.BuiltinRenderTextureType.GBuffer3.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Deferred shading G-buffer #3 (typically emission/lighting).

Built-in deferred shaders put ambient & emission into RGB channels of this texture. And then the lights are also added there during lighting pass. But your own custom shaders could be outputting anything there of course.

Note that GBuffer3 render texture is not created when the current camera is using HDR; instead emission/lighting is rendered directly into a camera's target texture. You'll need to use CameraTarget render texture type to handle the HDR camera case.

Additional resources: CommandBuffer.
