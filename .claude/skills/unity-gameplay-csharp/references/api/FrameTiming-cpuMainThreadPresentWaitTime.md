<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/FrameTiming-cpuMainThreadPresentWaitTime.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The CPU time the last frame spent in waiting for Present on the main thread, in ms.

This is the sum of shown `[wait]` blocks. It includes waits for `Present()` and the target fps. It's harder to show GPU work time because it starts somewhere in the middle of scene rendering and finishes on the next frame's sync point with the previous frame.

Additional resources: Get frame timing data.
