<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/writing-shader-render-state-commands.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Setting the render state on the GPU

Use these commands within a Pass block to set the render state for that Pass, or within a SubShader block to set the render state for that SubShader and any Passes that it contains.

| **Page** | **Description** |
| --- | --- |
| Enable conservative rasterization in a shader | Use the `Conservative` command to rasterize **pixels** that are partially covered by a triangle, regardless of coverage. |
| Set the culling mode in a shader | Use the `Cull` command to improve rendering efficiency by setting which polygons the GPU doesn’t draw. |
| Set the depth bias in a shader | Use the `Offset` command to set the depth at which the GPU draws geometry. |
| Set the depth clip mode in a shader | Use the `ZClip` command to set how the GPU handles fragments that are outside the near and far clip planes. |
| Set the depth testing mode in a shader | Use the `ZTest` command to change the conditions of depth testing to achieve visual effects such as object occlusion. |
| Disable writing to the depth buffer in a shader | Use the `ZWrite` command to set whether the GPU renders to the **depth buffer**. |
| Check or write to the stencil buffer in a shader | Use the `Stencil` command to configure the stencil test, or configure what the GPU writes to the **stencil buffer**. |
| Set the blending mode in a shader | Use the `Blend` and `BlendOp` commands to set how the GPU combines the output of the fragment **shader** with the render target. |
| Set the color channels the GPU renders to | Use the `ColorMask` command to prevent the GPU rendering to certain color channels, for example to render uncolored shadows. |
| Reduce aliasing with AlphaToMask mode | Use the `AlphaToMask` command to set the GPU to modify multisample anti-aliasing (MSAA) to reduce aliasing un shaders that use alpha testing, such as vegetation shaders. |
| Group commands with the Category block | Use the `Category` block to group commands that set the render state, so you can inherit the grouped rendering state within the block. |

## Additional resources

- ShaderLab language reference
