<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/svt-streaming-virtual-texturing.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Streaming Virtual Texturing

Streaming Virtual Texturing (SVT) is a feature that reduces GPU memory usage and texture loading times when you have many high resolution textures in your **Scene**. It splits textures into tiles, and progressively uploads these tiles to GPU memory when they are needed.

SVT lets you set a fixed memory cost. For full texture quality, the required GPU cache size depends mostly on the frame resolution, and not the number or resolution of textures in the Scene. The more high resolution textures you have in your Scene, the more GPU memory you can save with SVT.

The workflow requires no additional import time, no additional build step, and no additional streaming files. You work with regular Unity Textures in the Unity Editor.

| **Topic** | **Description** |
| --- | --- |
| **Streaming Virtual Texturing requirements and compatibility** | System requirements and **render pipeline** compatibility for Streaming Virtual Texturing. |
| **How Streaming Virtual Texturing works** | Understand how the system divides textures into tiles and streams them into GPU memory. |
| **Enabling Streaming Virtual Texturing in your project** | Enable Virtual Texturing in the **Player Settings** to begin using the feature. |
| **Using Streaming Virtual Texturing in Shader Graph** | Stream textures in custom **shaders** using the Virtual Texture Property and Sample Virtual Texture node. |
| **Cache Management for Virtual Texturing** | Configure CPU and GPU cache sizes to manage memory usage and prevent cache thrashing. |
| **Marking textures as “Virtual Texturing Only”** | Optimize memory and loading times by marking textures exclusively for Virtual Texturing. |
| **Virtual Texturing error material** | Diagnose validation errors that cause materials to render with a purple and blue checkerboard pattern. |
| **Virtual Texturing Profiler module** | Analyze virtual texturing performance and memory usage using the Profiler window. |

## Additional resources

- Loading textures asynchronously
- Textures reference
