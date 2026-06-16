<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/QualitySettings-maxQueuedFrames.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Maximum number of frames queued up by graphics driver.

Graphics drivers queue up frames that are yet to be rendered, especially when the CPU has lesser processes to execute than the graphics card, this queue can grow large. In such scenarios, the user's input might lag behind the content displayed on the screen.

Use QualitySettings.maxQueuedFrames to limit maximum number of frames that are queued. On PC, the default value is 2, which strikes a good balance between frame latency and framerate.

**Note:** You can reduce input latency by using smaller `maxQueuedFrames`, such that the CPU waits until the graphics card completes rendering previous frames. However, doing this might result in a lower framerate.

Currently, `maxQueuedFrames` is implemented in Direct3D 11, Direct3D 12, and Vulkan graphics APIs only and ignored by other graphics APIs. For information about other graphics APIs and where `maxQueuedFrames` is implemented, refer to platform-specific documentation.
