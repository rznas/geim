<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Experimental.Rendering.GraphicsFormatUtility.GetDepthStencilFormat.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| minimumDepthBits | Minimum number of bits that the format should have for the depth component. |
| minimumStencilBits | Minimum number of bits that the format should have for the stencil component. |

### Returns

**GraphicsFormat** A GraphicsFormat that has a depth and/or stencil component.

### Description

Returns a supported depth stencil format that has 'minimumDepthBits' of bits or higher per pixel for the depth component if a compatible format exists on the current platform. If 'minimumStencilBits' is higher than 0, and a compatible format exists on the current platform, Unity returns a depth stencil format with 8 bits per pixel for the stencil component.

The minimum depth bits are rounded up to 16, 24 or 32 bits. If the minimum stencil bits are zero then the returned format will not contain a stencil component.

Returns 'GraphicsFormat.None' if no formats are supported on the current platform that have the minimum amount of bits for the components.

Additional resources: RenderTexture.depthStencilFormat, RenderTextureDescriptor.depthStencilFormat.
