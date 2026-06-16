<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PlayerSettings-vulkanNumSwapchainBuffers.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Set the number of swapchain buffers used when rendering with Vulkan.

The swapchain manages the sequence of images that are presented to the display.

Valid range: `2-3` buffers. The default value is `3`.

- `2`: Lowers latency but requires precise synchronization between rendering and presentation. Frame stuttering might occur if the renderer can't match the display refresh rate.
- `3`: Provides better frame pacing and more consistent performance, at the cost of slightly higher latency.

**Note**: In the Editor, this value is always locked to `3` during Play mode to ensure stable playback while editing. The setting is applied in builds and when not in Play mode.
