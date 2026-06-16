<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Awaitable.EndOfFrameAsync.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| cancellationToken | Optional cancellation token used to signal cancellation. |

### Description

Resumes execution after all Unity subsystems have run for the current frame.

**Note:** This method can only be called from the main thread and always completes on main thread. Also, in Editor, this awaitable is incompatible with BatchMode and requires the game to be in play mode (in edit mode, it will never complete).

```csharp
private async Awaitable DoSomethingAsync()
{
   Debug.Log("Before game systems got updated for current thread");
   await Awaitable.EndOfFrameAsync();
   Debug.Log("After game systems got updated for current thread");
}
```
