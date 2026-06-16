<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.RenderingThreadingMode.NativeGraphicsJobsWithoutRenderThread.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Generates intermediate graphics commands via several worker threads and converts them into low-level platform API graphics commands.

In this mode, the main thread processes the application's high-level code and issues an intermediate representation of the required graphics commands for some of it.
 The main thread can also dispatch Graphics Jobs commands that describe bigger chunks of the high-level code, to several other worker threads.


The worker threads also convert the Graphics Jobs into the platform's low-level graphics API commands. 
 On some platforms you can test this mode by passing the command line argument `-gfx-enable-gfx-jobs -gfx-disable-mt-rendering` to an application built with BuildSettings option BuildOptions.Development.
