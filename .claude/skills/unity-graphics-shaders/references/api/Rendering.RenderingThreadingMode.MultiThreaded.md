<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.RenderingThreadingMode.MultiThreaded.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Generates intermediate graphics commands via the main thread. The render thread converts them into low-level platform API graphics commands.

In this mode, the main thread processes the application's high-level code through an internal class **GfxDeviceClient** that issues an intermediate representation of all the required graphics commands, and stores them in a buffer shared with the render thread.
 At the same time, the render thread keeps reading from that shared buffer through an internal class **GfxDeviceWorker** . When the render thread reads a new intermediate graphics command, it forwards it to a separate internal class **GfxDevice[Platform]** that converts them into the platform's low-level graphics API commands. 
 
 On some platforms you can test this mode by passing the command line argument `-force-gfx-mt` to an application built with BuildSettings option BuildOptions.Development.
