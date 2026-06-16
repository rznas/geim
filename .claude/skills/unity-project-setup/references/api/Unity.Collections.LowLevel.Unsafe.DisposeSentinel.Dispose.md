<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Collections.LowLevel.Unsafe.DisposeSentinel.Dispose.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| safety | The `AtomicSafetyHandle` returned when invoking the **Create** method. |
| sentinel | The `DisposeSentinel` to clear. |

### Description

Releases the `AtomicSafetyHandle` and clears the `DisposeSentinel`.

If the `AtomicSafetyHandle` can't be released, which usually happens either because a job is accessing the data or because the handle has already been released, an exception is thrown.
