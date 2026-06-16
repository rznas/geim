<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Profiling.Memory.Experimental.PackedMemorySnapshot-connections.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Connections is an array of from,to pairs that describe which things are keeping which other things alive.

The indices are indices into a virtual list that first contains all the GC handles, followed by all native objects.
