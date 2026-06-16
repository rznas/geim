<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Collections.NativeDisableParallelForRestrictionAttribute.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Indicates that multiple jobs can safely access the same NativeContainer at the same time.

Usually it's unsafe for multiple jobs to access the same NativeContainer at the same time. This attribute makes it safe to do so, and is a required attribute for [wiki:JobSystemParallelForJobs|parallel jobs]]. A parallel job needs this attribute because you must define how to safely access a native container yourself, and `NativeDisableParallelForRestriction` lets you ignore multiple reads and writes to a container.
