<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Collections.LowLevel.Unsafe.AtomicSafetyHandle.EnforceAllBufferJobsHaveCompletedAndDisableReadWrite.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| handle | The AtomicSafetyHandle to check. |

### Returns

**EnforceJobResult** Whether the job system waited for any jobs to finish.

### Description

Waits for all jobs running against an AtomicSafetyHandle to complete and then disables the read and write access on the AtomicSafetyHandle.

When read and write acess is disabled, you can only dispose of the AtomicSafetyHandle.
