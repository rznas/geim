<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.RenderingThreadingMode.NativeGraphicsJobsSplitThreading.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Generates intermediate graphics commands via several worker threads and render thread dispatches several worker threads to convert them into low-level platform API graphics commands.

In this mode, the main thread processes the application's high-level code and issues an intermediate representation of the required graphics commands for some of it.
 The main thread can also dispatch Graphics Jobs commands that describe bigger chunks of the high-level code, to several other worker threads.
 
 The separate render thread reads the intermediate graphics commands and the "graphics jobs" commands. 
 Similar to RenderingThreadingMode.MultiThreaded, the render thread converts the intermediate graphics commands into the platform's low-level graphics API commands. 
 The render thread dispatches Graphics Jobs commands to several worker threads, which convert them into low-level graphics API commands in parallel. 
 
 On some platforms this mode can be tested by passing command line argument `-force-gfx-jobs split` to an application built with BuildSettings option BuildOptions.Development.

**Note:** `RenderingThreadingMode.NativeGraphicsJobsSplitThreading` is supported only on DX12, Metal, Vulkan, PlayStation®4, and PlayStation®5.
