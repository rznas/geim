<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LightTransport.BakeProgressState.Progress.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**float** Progress value in the range [0;1].

### Description

Get the progress value.

Returns the current progress as a value between 0.0 and 1.0, where:

- 0.0 means no progress (operation just started).
- Values increase according to the rate of completion.
- 1.0 means the operation completed successfully.

The progress is calculated based on the ratio of completed work steps to total work steps set via SetTotalWorkSteps and updated via IncrementCompletedWorkSteps.

```csharp
// Monitor progress during baking
using var progress = new BakeProgressState();
integrator.SetProgressReporter(progress);// Start baking operation
var bakeTask = Task.Run(() =>
{
    return integrator.IntegrateDirectRadiance(
        context, 0, probeCount, 1024, false, outputBuffer);
});// Update UI with progress
while (!bakeTask.IsCompleted)
{
    float progressValue = progress.Progress();
    progressBar.value = progressValue;
    progressText.text = $"{progressValue * 100:F1}%";    await Task.Delay(50); // Update at 20 FPS
}progressBar.value = 1.0f;
progressText.text = "Complete!";
```
