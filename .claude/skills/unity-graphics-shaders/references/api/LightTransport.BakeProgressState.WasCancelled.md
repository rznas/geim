<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LightTransport.BakeProgressState.WasCancelled.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**bool** True if the work was cancelled.

### Description

Checks whether the work represented by this progress state was cancelled.

Returns true if Cancel was called on this progress state. This method can be used by both the implementation and user code to check if cancellation was requested.

**Usage Patterns:**

- Check cancellation status after operations complete.
- Poll during long-running custom operations.
- Determine final operation result (success vs cancelled).

**Note:** A cancelled operation may still produce partial results depending on when cancellation occurred.

```csharp
// Handle cancellation in batch processing
using var progress = new BakeProgressState();
progress.SetTotalWorkSteps((ulong)scenes.Length);var results = new List<BakeResult>();
for (int i = 0; i < scenes.Length; i++)
{
    // Check for cancellation before each scene
    if (progress.WasCancelled())
    {
        Debug.Log($"Batch cancelled after {i} scenes");
        break;
    }    var sceneResult = BakeScene(scenes[i], progress);
    results.Add(sceneResult);    progress.IncrementCompletedWorkSteps(1);
}// Determine final status
if (progress.WasCancelled())
{
    Debug.Log($"Batch processing cancelled. Completed {results.Count}/{scenes.Length} scenes.");
}
else
{
    Debug.Log($"Batch processing completed successfully. Processed {results.Count} scenes.");
}
```
