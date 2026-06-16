<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/CameraOutput-troubleshoot.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Troubleshooting camera output

The **Camera** component **Inspector** window indicates when a camera is rendering a depth or a depth+normals texture.

The way that depth textures are requested from the Camera (Camera.depthTextureMode) might mean that after you disable an effect that needed them, the Camera might still continue rendering them. If there are multiple effects present on a Camera, where each of them needs the depth texture, there’s no good way to automatically disable depth texture rendering if you disable the individual effects.

When implementing complex **Shaders** or Image Effects, keep Rendering Differences Between Platforms in mind. In particular, using depth texture in an Image Effect often needs special handling on Direct3D + Anti-Aliasing.

In some cases, the depth texture might come directly from the native Z buffer. If you see artifacts in your depth texture, make sure that the shaders that use it **do not** write into the Z buffer (use ZWrite Off).

When the DepthNormals texture is rendered in a separate pass, this is done through Shader Replacement. Hence it is important to have correct “**RenderType**” tag in your shaders.

## Additional resources

- Camera Inspector windows reference for URP
- Camera Inspector window reference for the Built-In Render Pipeline
