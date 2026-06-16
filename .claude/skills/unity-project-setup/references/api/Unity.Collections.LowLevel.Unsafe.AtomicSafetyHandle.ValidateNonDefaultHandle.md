<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Collections.LowLevel.Unsafe.AtomicSafetyHandle.ValidateNonDefaultHandle.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| handle | The AtomicSafetyHandle to check. |

### Description

Checks that the handle has been initialized, and if so, checks that it is still valid.

This is almost identical to AtomicSafetyHandle.IsValidNonDefaultHandle, except that if the AtomicSafetyHandle has been initialized but isn't valid, then an `ObjectDisposedException` is thrown instead of returning `false`.

If the handle hasn't been initialized, then this method does nothing. Use AtomicSafetyHandle.IsDefaultValue to check whether a handle is uninitialized.
