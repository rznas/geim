<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.CommandBuffer.SetGlobalDepthBias.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| bias | Scales the GPU's minimum resolvable depth buffer value to produce a constant depth offset. The minimum resolvable depth buffer value varies by device.  Set to a negative value to draw geometry closer to the camera, or a positive value to draw geometry further away from the camera. |
| slopeBias | Scales the maximum Z slope, also called the depth slope, to produce a variable depth offset for each polygon.  Polygons that are not parallel to the near and far clip planes have Z slope. Adjust this value to avoid visual artifacts on such polygons. |

### Description

Adds a command to set the global depth bias.

Depth bias, also called depth offset, is a setting on the GPU that determines the depth at which it draws geometry. Adjust the depth bias to force the GPU to draw geometry on top of other geometry that is at the same depth. This can help you to avoid unwanted visual effects such as z-fighting and shadow acne.

To set the depth bias for specific geometry, use the Offset command in ShaderLab or a RenderStateBlock. To set the global depth bias, which affects all geometry, use this command. The GPU applies the depth bias for specific geometry in addition to the global depth bias.

In the Built-in Render Pipeline, Unity sets the global depth bias to `(1.0, 1.0)` during the shadow caster pass.

To reduce shadow acne, you can achieve a similar visual effect with the **light bias** settings; however, these settings work differently, and they do not change the state on the GPU. For more information, see Shadow troubleshooting.
