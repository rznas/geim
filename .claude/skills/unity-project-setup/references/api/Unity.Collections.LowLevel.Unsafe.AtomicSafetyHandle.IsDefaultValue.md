<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Collections.LowLevel.Unsafe.AtomicSafetyHandle.IsDefaultValue.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| handle | The AtomicSafetyHandle to check. |

### Returns

**bool** `true` if the AtomicSafetyHandle hasn't been initialized and still has its default value; `false` otherwise.

### Description

Checks if an AtomicSafetyHandle has its default value.

An AtomicSafetyHandle still has its default value if it hasn't been initialized by being assigned or passed to AtomicSafetyHandle.Create. By default, an AtomicSafetyHandle variable isn't initialized, which means it doesn't reference any central record and doesn't have a stored a version number. This changes when you pass the variable to AtomicSafetyHandle.Create, or when you assign it from an existing initialized AtomicSafetyHandle.
