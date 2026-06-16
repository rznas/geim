<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.RenderingThreadingMode.LegacyJobified.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Generates intermediate graphics commands via several worker threads. A single render thread then converts them into low-level platform API graphics commands.

In this mode, several job worker threads process the application's high-level code and issue an intermediate representation of all the required graphics commands.
 A separate single render thread reads those intermediate graphics commands, and forwards them to an internal class **GfxDevice[Platform]** that converts them into the platform's low-level graphics API commands. 
 
 On some platforms this mode can be tested by passing command line argument `-force-gfx-jobs legacy` to an application built with BuildSettings option BuildOptions.Development .
