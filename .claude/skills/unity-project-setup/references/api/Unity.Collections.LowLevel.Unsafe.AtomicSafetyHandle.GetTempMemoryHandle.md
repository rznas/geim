<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Collections.LowLevel.Unsafe.AtomicSafetyHandle.GetTempMemoryHandle.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**AtomicSafetyHandle** The AtomicSafetyHandle for temporary memory allocations in the current scope.

### Description

Gets an AtomicSafetyHandle for the temporary memory allocations in a temporary memory scope.

The temporary safety handle is invalidated when the temporary memory is freed. This happens when the active temporary memory scope exists, which happens at least once per frame. Don't manually call Release on this AtomicSafetyHandle.

Additional resources: AtomicSafetyHandle.IsTempMemoryHandle.
