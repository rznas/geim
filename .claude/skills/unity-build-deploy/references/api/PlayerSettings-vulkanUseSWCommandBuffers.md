<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PlayerSettings-vulkanUseSWCommandBuffers.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Use software command buffers for building rendering commands on Vulkan.

If this setting is disabled, all rendering commands are built into secondary command buffers, one per each graphics job. If enabled, all rendering commands are instead serialized into a software buffer, and a separate thread is used to build a single primary command buffer based on that information.

Note: this setting is only intended to correct a specific issue when displaying IMGUI in a project that uses linear color space. If you are using IMGUI in a linear color space project, your IMGUI graphics will be drawn incorrectly (their color will appear washed out). This setting corrects that problem, but at a performance cost. On desktop platforms this cost may not be noticable, but it is particularly significant on mobile platforms with tile-based GPUs.

The best way to avoid this issue, instead of enabling this setting, is to use the Canvas-based UI system in your game instead of IMGUI. IMGUI is not intended for in-game UI, it is mainly intended for creating UI in the editor.
