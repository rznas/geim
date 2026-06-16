<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PlayerSettings-vulkanEnableLateAcquireNextImage.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Delays acquiring the swapchain image until after the frame is rendered.

If enabled, the Vulkan renderer delays acquiring the backbuffer until after it renders the frame. The Vulkan renderer will use a staging image to achieve this. Enabling this setting causes an extra blit when presenting the backbuffer. This setting can also cause some performance degradation, especially on tile-based GPUs.
