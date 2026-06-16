<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.RenderingThreadingMode.SingleThreaded.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Use SingleThreaded for internal debugging. It uses only a single thread to simulate RenderingThreadingMode.MultiThreaded.

In this mode, the main thread processes the application's high-level code through an internal class **GfxDeviceClient** that issues an intermediate representation of all the required graphics commands.
 Those intermediate graphics commands are forwarded to a separate internal class **GfxDevice[Platform]** that converts them into the platform's low-level graphics API commands. 
 
 On some platforms you can test this mode by passing the command line argument `-force-gfx-st` to an application built with BuildSettings option BuildOptions.Development.
