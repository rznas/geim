<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Collections.LowLevel.Unsafe.AtomicSafetyHandle.CheckWriteAndThrow.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| handle | The AtomicSafetyHandle to check. |

### Description

Check whether the referenced native container can be written to.

Throws the `InvalidOperationException` exception if the `AtomicSafetyHandle` is already destroyed or a job is currently reading or writing to the data.
