<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Collections.Allocator.Domain.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Use an allocation associated with the lifetime of a domain.

You don't need to free this memory, because Unity frees it automatically at domain unload. However, to conserve memory, you can free it at any time. Freeing a large number of such allocations in one frame, such that the array of freed pointers is larger than L2 cache, might exhibit a measurable loss of performance.

**Note**: The Domain allocator can track a maximum of 262144 (256 * 1024) individual allocations. If the number of allocations exceeds that number, Unity logs an error and does not free excessive allocations automatically.
