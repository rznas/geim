<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/runtime-performance-scaling-introduction.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Introduction to runtime performance scaling

Runtime performance scaling is the process of adjusting an application’s quality settings while it’s running. The goal is to maintain a stable frame rate and manage device resources like power and temperature by dynamically trading visual quality for performance.

## Systems for runtime performance scaling

In Unity, you can control quality settings at runtime with the following tools and APIs:

- Dynamic Resolution: Adjusts rendering resolution automatically to maintain a target frame rate in URP and HDRP.
- QualitySettings API: Defines and changes between performance tiers with different settings for shadows, textures, and more.
- Level of Detail (LOD): Modifies the complexity of rendered models by changing the **LOD** bias, using simpler or more detailed meshes based on performance needs.
- Frame Timing Manager: Provides low-level CPU and GPU timing data, enabling **scripts** to detect performance bottlenecks and respond as needed.

You can also use the Adaptive Performance system, which monitors device performance and automatically manages these foundational features and APIs to meet your performance targets. This system is especially useful on mobile devices, where hardware constraints can change rapidly.

## Additional resources

- Memory in Unity
- Unity Profiler
- Profiling tools
- Graphics performance and profiling
