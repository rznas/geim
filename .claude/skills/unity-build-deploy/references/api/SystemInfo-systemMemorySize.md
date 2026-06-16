<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SystemInfo-systemMemorySize.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Amount of system memory present (Read Only).

This is the approximate amount of system memory in megabytes.

**WebGL**: This function will return the current size of the asm.js/WebAssembly heap. Note that when using WebAssembly, the heap size can increase at run-time if the Unity content memory-usage exceeds the initial memory size. **Windows Store Apps**: This function is not supported on Windows Store Apps and will always return 0.

Additional resources: SystemInfo.graphicsMemorySize.
