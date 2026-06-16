<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.BuiltinRenderTextureType.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Built-in temporary render textures produced during camera's rendering.

When camera is rendering the Scene, in some cases it can produce temporary render textures in the process (e.g. depth textures, deferred G-buffer etc.). This enum indicates these temporary render textures.

BuiltinRenderTextureType can be used as a RenderTargetIdentifier in some functions of CommandBuffer.

Additional resources: CommandBuffer, RenderTargetIdentifier.

### Properties

| Property | Description |
| --- | --- |
| PropertyName | A globally set property name. |
| BufferPtr | The raw RenderBuffer pointer to be used. |
| RenderTexture | The given RenderTexture. |
| CurrentActive | Currently active render target. |
| CameraTarget | Target texture of currently rendering camera. |
| Depth | Camera's depth texture. |
| DepthNormals | Camera's depth+normals texture. |
| ResolvedDepth | Resolved depth buffer from deferred. |
| GBuffer0 | Deferred shading G-buffer #0 (typically diffuse color). |
| GBuffer1 | Deferred shading G-buffer #1 (typically specular + roughness). |
| GBuffer2 | Deferred shading G-buffer #2 (typically normals). |
| GBuffer3 | Deferred shading G-buffer #3 (typically emission/lighting). |
| Reflections | Reflections gathered from default reflection and reflections probes. |
| MotionVectors | Motion Vectors generated when the camera has motion vectors enabled. |
| GBuffer4 | Deferred shading G-buffer #4 (typically occlusion mask for static lights if any). |
| GBuffer5 | G-buffer #5 Available. |
| GBuffer6 | G-buffer #6 Available. |
| GBuffer7 | G-buffer #7 Available. |
