<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PlayerSettings.WebGL-threadsSupport.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Multithreading support in WebGL.

When enabled, Unity generates a WebGL build with multithreading support enabled. This support allows C/C++ code and C# jobs compiled with the Burst compiler to run on separate threads. The generated content requires a browser that supports WebAssembly threads (SharedArrayBuffer). Multithreading standard C# code is not yet available.
