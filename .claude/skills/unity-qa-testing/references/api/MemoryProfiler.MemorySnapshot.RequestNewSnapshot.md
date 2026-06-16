<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/MemoryProfiler.MemorySnapshot.RequestNewSnapshot.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Requests a new snapshot from the currently connected target of the profiler. Memory snapshots are supported on IL2CPP and Mono .NET 3.5/4.0 scripting backends, although .NET 3.5 has been deprecated as of 2018.3. 
 
 **NOTE:** Each snapshot consists of approximately one managed object per recorded managed object. Snapshots taken from the editor will contain the objects in all previous snapshots that have not yet been garbage-collected. Therefore, repeated snapshots of the editor may grow exponentially. If you no longer need an old snapshot it is therefore advisable to null all references to it and call GC.Collect() before taking another one.
