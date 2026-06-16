<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.RenderingThreadingMode.Direct.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Use the Direct enum to directly render your application from the main thread.

In this rendering threading mode, the main thread processes your application's high-level code, and directly converts it into the target platform's low-level graphics API commands. 
 
 On some platforms you can test this mode by passing the command line argument `-force-gfx-jobs legacy` to an application built with BuildSettings option BuildOptions.Development.
