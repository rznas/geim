<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/RenderingStatistics.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Rendering Statistics window reference

To open the Rendering Statistics window, enter Play mode in the Game view, then select the **Stats** button in the top-right corner. Unity displays the **Statistics** window as an overlay in the top-right of the Game view.

The statistics Unity displays depend on your build profile.

## Hardware

| **Statistic** | **Description** |
| --- | --- |
| ****FPS**** | The **frames per second**. The current number of frames Unity is able to draw per second. |
| **Global Frametime** | The average time Unity takes to render and display a frame, in milliseconds. This value includes both CPU and GPU time. |
| **GPU Frametime** | The average time the GPU takes to render a frame, in milliseconds. |
| **CPU Main Thread vs Render Thread** | The percentage of time taken by the main CPU thread and the render thread. The main CPU thread value includes the time Unity takes in the Editor to update the **Scene** view, other Editor windows, and Editor-only tasks. The render thread value includes the time Unity takes to process the frame update for the Game view, but doesn’t include the time Unity takes in the Editor. |

## Scene

| **Statistic** | **Description** |
| --- | --- |
| **Triangles** | The number of triangles Unity processes during a frame. This value is important when you optimize for low-end hardware. |
| **Vertices** | The number of vertices Unity processes during a frame. This value is important when you optimize for low-end hardware. |
| **Set Pass Calls** | The number of times Unity switches which **shader** pass it uses to render **GameObjects** during a frame. A shader might contain several shader passes, and each pass renders GameObjects differently. Each pass requires Unity to bind a new shader, which might introduce CPU overhead. |
| **Draw Calls** | The total number of draw calls Unity processes during a frame. In parentheses, Unity displays the number of draw calls it combines into single instances. Use the foldout (triangle) to display a breakdown of the draw calls and instances. |

### Draw Breakdowns

| **Statistic** | **Description** |
| --- | --- |
| **SRP Batcher** | The number of draw calls and instances that the Scriptable Render Pipeline (SRP) Batcher optimizes. |
| **BRG/GRD** | The number of draw calls and instances that the BatchRendererGroup API and GPU Resident Drawer optimize. |
| **Non-SRP Compatible** | The number of draw calls that aren’t compatible with the SRP Batcher, and aren’t optimized by the BatchRendererGroup API, the GPU Resident Drawer, or GPU instancing. |
| **Standard Instanced** | The number of draw calls and instances that GPU Instancing optimizes. |

## Memory

| **Statistic** | **Description** |
| --- | --- |
| **Total Allocated Memory** | The amount of memory Unity allocates. |
| **Estimated Graphics Memory** | The estimated amount of graphics memory Unity uses. |
| **Total texture memory** | The amount of memory Unity allocates for textures on the CPU and GPU. |
| **Current texture memory** | The amount of memory textures currently use on the CPU and GPU. |
| **Streaming Texture Memory vs Non-streaming** | The amount of memory used by the experimental Streaming Virtual Texturing feature and non-streaming textures. |

## Animation and Meshes

| **Statistic** | **Description** |
| --- | --- |
| **In-flight animators** | The number of Animator components playing during the frame. |
| **Visible skinned meshes** | The number of Skinned Mesh Renderers in the frame. |
| **Updated skinned meshes** | The number of Skinned Mesh Renderers Unity updates during the frame. |

## Additional resources

- Rendering module of the Profiler window
