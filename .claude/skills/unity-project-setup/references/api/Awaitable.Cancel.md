<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Awaitable.Cancel.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Cancels the awaitable. If the awaitable is being awaited, the awaiter receives a System.OperationCanceledException.

**Note:** some methods returning an `Awaitable` also accept a CancellationToken. Both cancelation models are equivalent.
