<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Collections.LowLevel.Unsafe.AtomicSafetyHandle.GetNestedContainer.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| handle | The AtomicSafetyHandle to check. |

### Returns

**bool** `true` if the given AtomicSafetyHandle is marked as a nested container; `false` otherwise.

### Description

Checks whether an AtomicSafetyHandle represents a nested container.

If the AtomicSafetyHandle is marked as a nested container, it can't be used safely in jobs. Additional resources: AtomicSafetyHandle.SetNestedContainer.
