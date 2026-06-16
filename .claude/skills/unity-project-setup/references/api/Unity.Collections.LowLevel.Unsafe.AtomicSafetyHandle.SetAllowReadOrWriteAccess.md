<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Collections.LowLevel.Unsafe.AtomicSafetyHandle.SetAllowReadOrWriteAccess.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| handle | The AtomicSafetyHandle to set read and write access on. |
| allowReadWriteAccess | Use `false` to disallow read or write access, or `true` otherwise. |

### Description

Sets the read or write access on an AtomicSafetyHandle.

For example, when a buffer references other data that becomes invalid, then typically the only operation that can be performed safely is to dispose of the buffer. Calling this method makes sure that any further attempts to read or write the buffer throws an exception.

Additional resources: AtomicSafetyHandle.GetAllowReadOrWriteAccess.
