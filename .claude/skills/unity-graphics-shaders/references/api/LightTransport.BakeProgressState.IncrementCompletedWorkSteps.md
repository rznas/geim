<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LightTransport.BakeProgressState.IncrementCompletedWorkSteps.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| steps | Number of work steps to increment by. |

### Description

Increments the amount of completed work steps for this progress state.

Updates the progress by adding the specified number of completed work steps. This method is typically called by the implementation during operation execution to report incremental progress.

The progress percentage is calculated as: completedSteps / totalSteps.

Additional resources: SetTotalWorkSteps for setting the total expected work.

```csharp
// Custom operation with manual progress reporting
using var progress = new BakeProgressState();
progress.SetTotalWorkSteps(100);for (int i = 0; i < 100; i++)
{
    // Perform some work
    ProcessLightProbe(i);    // Report progress
    progress.IncrementCompletedWorkSteps(1);    // Log progress
    float currentProgress = progress.Progress();
    Debug.Log($"Processing: {currentProgress * 100:F0}% complete");    // Check for cancellation
    if (progress.WasCancelled())
    {
        Debug.Log("Operation cancelled by user");
        break;
    }
}
```
