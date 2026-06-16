<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.RenderTargetIdentifier.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Identifies a RenderTexture for a CommandBuffer.

Render textures can be identified in a number of ways, for example a RenderTexture object, or one of built-in render textures (BuiltinRenderTextureType), or a temporary render texture with a name (that was created using CommandBuffer.GetTemporaryRT).

This struct serves as a way to identify them, and has implicit conversion operators so that in most cases you can save some typing.

Additional resources: CommandBuffer.

### Static Properties

| Property | Description |
| --- | --- |
| AllDepthSlices | All depth-slices of the render resource are bound for rendering. For textures which are neither array nor 3D, the default slice is bound. |
| Invalid | Invalid RenderTargetIdentifier. |

### Constructors

| Constructor | Description |
| --- | --- |
| RenderTargetIdentifier | Creates a render target identifier. |
