<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AwaitableCompletionSource.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Objects allowing to control completion of an Awaitable object from user code.

### Properties

| Property | Description |
| --- | --- |
| Awaitable | Get the awaitable controlled by the completion source. |

### Public Methods

| Method | Description |
| --- | --- |
| Reset | Reset the completion source (this will set the Awaitable property to a new Awaitable object). |
| SetCanceled | Raise cancellation. |
| SetException | Raise completion with an exception. |
| SetResult | Raise completion. |
| TrySetCanceled | Raise cancellation (returns false if the awaitable was already completed or canceled). |
| TrySetException | Raise completion with an exception. |
| TrySetResult | Raise the awaitable completion. |
