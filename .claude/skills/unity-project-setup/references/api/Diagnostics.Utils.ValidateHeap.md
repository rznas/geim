<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Diagnostics.Utils.ValidateHeap.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Scans the managed heap to check for corrupted objects.

This function only works when you use the Mono scripting backend. If this function discovers a corrupted object, the editor log displays a callstack and the Editor crashes, either through a fatal native assert or an access violation within Mono. Use this function to find memory corruption closer to when it occurs.
