<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PlayerSettings-vulkanEnableSetSRGBWrite.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Enables the ability to toggle sRGB write mode on Vulkan framebuffers.

In a Linear Color Space workflow, enabling sRGB write mode allows the GPU to automatically perform linear-to-sRGB conversion and ensures that blending operations are mathematically correct. This setting is always enabled in Editor mode.
 This is particularly useful for projects that require parity with OpenGL's `GL_FRAMEBUFFER_SRGB` behavior or for custom rendering pipelines that need to precisely control when gamma correction is applied (e.g., bypassing it for UI overlays or specific post-processing passes).

**Note**: Enabling this setting requires an extra blit operation when presenting the back buffer, which can lead to performance degradation, particularly on mobile/tile-based GPUs. It should remain disabled unless your shaders or workflow explicitly require the ability to toggle the sRGB write state.

Additional resources: Linear Color Space in Unity
