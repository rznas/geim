<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Collections.LowLevel.Unsafe.AtomicSafetyHandle.GetTempUnsafePtrSliceHandle.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**AtomicSafetyHandle** A shared AtomicSafetyHandle.

### Description

Gets a single shared AtomicSafetyHandle.

For example, a shared AtomicSafetyHandle might be shared with a NativeSlice that points to stack memory. The shared AtomicSafetyHandle is never disposed, and you can't use it in a job.
