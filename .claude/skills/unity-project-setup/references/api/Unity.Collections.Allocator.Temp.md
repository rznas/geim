<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Collections.Allocator.Temp.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Use a temporary allocation.

The fastest allocation. Use it for allocations with a lifespan of one frame or fewer. You can't use Temp to pass allocations to NativeContainer instances stored in a job's member field.
