<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Collections.LowLevel.Unsafe.AtomicSafetyHandle.GetReaderArray.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| handle | The AtomicSafetyHandle to return readers for. |
| maxCount | The maximum number of AtomicSafetyHandles to write to the output array. |
| output | A buffer where the job handles are written. |

### Returns

**int** The number of readers on the handle, which might be greater than the maximum count provided.

### Description

Fetches the job handles of all jobs that read from an AtomicSafetyHandle.

This is a debugging method used to produce better error messages and is not intended to be called from user code.
