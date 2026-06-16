<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/XR.XRDisplaySubsystem.ScaledTextureWidth.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| renderTexture | A scalable XR eye texture. |

### Returns

**int** The width after dynamic scaling. If the texture was not created with both the DynamicallyScalable and EyeTexture flags, or dynamic resolution is not enabled, the original width is returned.

### Description

Provides the current, scaled width of a render texture.

Render textures created with both the DynamicallyScalable and EyeTexture flags are subject to scaling when dynamic resolution is active. This function returns the effective, scaled width for the current frame. 

If you pass in a texture that is not affected by dynamic resolution, this method returns the original width.

The scaled width can be useful when you need to know the exact size of an eye texture when XR dynamic resolution is enabled. For example, you might need the size for post-processing effects in custom shaders that use screen-space texture coordinates, to program custom XR render passes, or to create custom render pipelines.
