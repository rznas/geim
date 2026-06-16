<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Awaitable.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Custom Unity type that can be awaited and used as an async return type in the C# asynchronous programming model.

`Awaitable` is usually a preferable alternative to .NET `Task` for asynchronous code in Unity. It's important, however, to know the differences between the two. Most notably, instances of the `Awaitable` class are pooled and therefore not safe to `await` multiple times in the same method.

For more information, refer to Asynchronous programming with the Awaitable class in the Manual.

```csharp
private async Awaitable DoSomethingAsync()
{
   await LoadSceneAsync("SomeScene");
   await SomeApiReturningATask();
   await Awaitable.NextFrameAsync();
   // <...>
}
```

### Properties

| Property | Description |
| --- | --- |
| IsCompleted | Indicates if the awaitable has run to completion. |

### Public Methods

| Method | Description |
| --- | --- |
| Cancel | Cancels the awaitable. If the awaitable is being awaited, the awaiter receives a System.OperationCanceledException. |

### Static Methods

| Method | Description |
| --- | --- |
| BackgroundThreadAsync | Resumes execution on a ThreadPool background thread. Completes immediately when called from a background thread. |
| EndOfFrameAsync | Resumes execution after all Unity subsystems have run for the current frame. |
| FixedUpdateAsync | Resumes execution on the next fixed update frame. |
| FromAsyncOperation | Creates an Awaitable from an existing AsyncOperation object. |
| MainThreadAsync | Resumes execution on the Unity main thread. Completes immediately when called from the main thread. |
| NextFrameAsync | Resumes execution on the next frame. |
| WaitForSecondsAsync | Resumes execution after the specified number of seconds. |
