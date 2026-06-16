<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Collections.LowLevel.Unsafe.DisposeSentinel.Create.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| safety | The `AtomicSafetyHandle` to control access to the data related to the newly created `DisposeSentinel`. |
| sentinel | The new `DisposeSentinel`. |
| callSiteStackDepth | The stack depth where to extract the logging information from. |

### Description

Creates a new `AtomicSafetyHandle` and a new `DisposeSentinel`, to be used to track safety and leaks on native data.

When `DisposeSentinel` is created, the call stack is stored in it to log a descriptive error when a memory leak is detected.
