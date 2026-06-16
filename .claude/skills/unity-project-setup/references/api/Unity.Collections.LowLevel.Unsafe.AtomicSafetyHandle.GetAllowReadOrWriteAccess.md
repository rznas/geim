<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Collections.LowLevel.Unsafe.AtomicSafetyHandle.GetAllowReadOrWriteAccess.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| handle | The AtomicSafetyHandle to check. |

### Returns

**bool** True if the AtomicSafetyHandle is configured to allow reading or writing, false otherwise.

### Description

Checks if the AtomicSafetyHandle is configured to allow reading or writing.

Read and write access is allowed by default in any newly created AtomicSafetyHandle.

Additional resources: AtomicSafetyHandle.SetAllowReadOrWriteAccess.
