<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Collections.LowLevel.Unsafe.AtomicSafetyHandle.Release.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| handle | The AtomicSafetyHandle to release. |

### Description

Releases a previously created AtomicSafetyHandle.

After this call, this AtomicSafetyHandle and copies of it are no longer valid. AtomicSafetyHandle.IsHandleValid returns false.

You must call AtomicSafetyHandle.CheckDeallocateAndThrow before calling Release. Don't call this method for the handle returned by AtomicSafetyHandle.GetTempMemoryHandle or AtomicSafetyHandle.GetTempUnsafePtrSliceHandle, because the lifetime of those handles is automatically managed by the engine.
