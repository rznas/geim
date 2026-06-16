<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Collections.LowLevel.Unsafe.NativeSetThreadIndexAttribute.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Inject a worker thread index into an int on the job struct.

This is usually used in the implementation of atomic containers. The index is guaranteed to be unique to any other job that might be running in parallel.

Additional resources: JobsUtility.ThreadIndex
