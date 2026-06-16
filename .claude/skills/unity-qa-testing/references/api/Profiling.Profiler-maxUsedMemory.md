<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Profiling.Profiler-maxUsedMemory.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Sets the maximum amount of memory that Profiler uses for buffering data. This property is expressed in bytes.

When Profiler is enabled, it collects data continuously and either saves the data to a file or sends it to the Editor.

Depending on disk write speed or network bandwidth, Profiler may collect more data than it is able to write. If this happens, Profiler accumulates data in a ring buffer chain and stops collecting data when the total size of the buffer chain reaches the *maxUsedMemory* limit. Profiler data collection resumes when it is able to write data.

By default, *maxUsedMemory* is 128MB for Players and 512MB for the Editor. You can use the **-profiler-maxusedmemory** command line argument to set the *maxUsedMemory* parameter at startup. For example, *-profiler-maxusedmemory 16777216*,

Additional resources: Profiler.enabled.
