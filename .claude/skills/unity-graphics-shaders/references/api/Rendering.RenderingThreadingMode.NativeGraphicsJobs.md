<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.RenderingThreadingMode.NativeGraphicsJobs.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Main thread generates intermediate graphics commands. Render thread converts them into low-level platform API graphics commands. Render thread can also dispatch graphics jobs to several worker threads.

In this mode, the main thread processes the application's high-level code and issue an intermediate representation of the required graphics commands for some of it.
 The main thread can also issue "Graphics Jobs" commands that describe bigger chunks of the high-level code.
 
 The separate render thread reads the intermediate graphics commands and the "graphics jobs" commands. 
 Similarly to RenderingThreadingMode.MultiThreaded, the render thread converts the intermediate graphics commands into the platform's low-level graphics API commands. 
 In addition, the render thread dispatches the "Graphics Jobs" commands to several other worker threads. In parallel, the worker threads will convert the graphics jobs into the platform's low-level graphics API commands. 
 
 On some platforms this mode can be tested by passing command line argument `-force-gfx-jobs native` to an application built with BuildSettings option BuildOptions.Development .
