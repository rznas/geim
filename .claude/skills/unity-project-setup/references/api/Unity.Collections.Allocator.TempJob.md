<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Collections.Allocator.TempJob.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Use a temporary job allocation.

A slower allocation than Temp but faster than Persistent. Use it for thread-safe allocations within a lifespan of four frames. 

**Important**: You must Dispose of this allocation type within four frames, or the console prints a warning, generated from the native code. Most small jobs use this allocation type.
