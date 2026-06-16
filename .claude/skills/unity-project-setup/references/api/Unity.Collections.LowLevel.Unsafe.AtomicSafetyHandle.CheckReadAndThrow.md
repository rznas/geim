<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Collections.LowLevel.Unsafe.AtomicSafetyHandle.CheckReadAndThrow.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| handle | The AtomicSafetyHandle to check. |

### Description

Check whether the referenced native container can be read from.

Throws an exception if the AtomicSafetyHandle is already destroyed, or a job is currently writing to the data.
