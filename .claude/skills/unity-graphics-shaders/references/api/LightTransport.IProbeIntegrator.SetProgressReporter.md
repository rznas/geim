<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LightTransport.IProbeIntegrator.SetProgressReporter.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| progress | Progress state object that will receive updates during integration. |

### Description

Configures progress tracking for integration operations.

Set a BakeProgressState on the integrator for progress reporting for long-running integration operations. The integrator updates the progress state during execution, allowing external systems to display progress information and handle cancellation requests.

The progress reporter provides:

- Completion percentage (0.0 to 1.0).
- Ability to cancel operations.
- Work step tracking for detailed progress.

Additional resources: BakeProgressState.Progress, BakeProgressState.Cancel.

```csharp
var integrator = new RadeonRaysProbeIntegrator();
using var progress = new BakeProgressState();
integrator.SetProgressReporter(progress);// Start integration in background
var integrationTask = Task.Run(() =>
{
    return integrator.IntegrateDirectRadiance(context, 0, 1000, 2048, false, outputBuffer);
});// Monitor progress
while (!integrationTask.IsCompleted)
{
    float currentProgress = progress.Progress();
    Debug.Log($"Integration progress: {currentProgress * 100:F1}%");    // Allow user to cancel
    if (userRequestedCancel)
    {
        progress.Cancel();
    }    await Task.Delay(100);
}var result = await integrationTask;
```
