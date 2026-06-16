<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Collections.LowLevel.Unsafe.AtomicSafetyHandle.SetStaticSafetyId.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| handle | The AtomicSafetyHandle to modify. |
| staticSafetyId | The static safety ID to associate with the provided AtomicSafetyHandle. This ID must have been allocated with NewStaticSafetyId. |

### Description

Assigns a provided static safety ID to an AtomicSafetyHandle.

The ID's owner type name and any custom error messages are used by the job debugger when reporting errors involving the target handle. Additional resources: AtomicSafetyHandle.NewStaticSafetyId.
