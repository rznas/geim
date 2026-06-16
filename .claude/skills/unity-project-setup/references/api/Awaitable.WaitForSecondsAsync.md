<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Awaitable.WaitForSecondsAsync.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| seconds | Seconds to wait for. |
| cancellationToken | Optional cancellation token. |

### Description

Resumes execution after the specified number of seconds.

This method can only be called from the main thread and always completes on main thread.

 **Note:**: `Awaitable.WaitForSecondsAsync` throws `OperationCanceledException` if the provided `CancellationToken` is canceled during the wait. This aborts the wait rather than interrupting it and continuing. If you use cancellation to indicate that a task has completed early and expect execution to proceed to subsequent statements, you must handle the exception explicitly or avoid passing a token here. Otherwise, code that awaits a delay with a token and then runs follow-up logic might skip that logic when the token is triggered.

```csharp
async Awaitable Foo(){
  await Awaitable.WaitForSecondsAsync(2);
  // Do something
  await Awaitable.WaitForSecondsAsync(2);
  // Do something else
}
```
