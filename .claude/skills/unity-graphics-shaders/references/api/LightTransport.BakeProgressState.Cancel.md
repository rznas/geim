<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LightTransport.BakeProgressState.Cancel.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Cancel the asynchronous operation.

Requests cancellation of any ongoing operations that use this progress state. This method returns immediately and the operation is cancelled once the implementation has a chance to react to the request and terminate the operation.

**Cancellation Behavior:**

 - The cancellation request is cooperative - operations must check for cancellation. - Not all operations support cancellation. - Cancellation may take time to take effect. - Use WasCancelled to check if cancellation was requested.

**Note:** This method only requests cancellation; it does not force immediate termination.

```csharp
// Set up cancellable baking operation
using var progress = new BakeProgressState();
var integrator = new RadeonRaysProbeIntegrator();
integrator.SetProgressReporter(progress);// Start long-running operation
var bakeTask = Task.Run(() =>
{
    return integrator.IntegrateIndirectRadiance(
        context, 0, 10000, 4096, false, outputBuffer);
});// Allow user to cancel with UI button
cancelButton.onClick.AddListener(() =>
{
    progress.Cancel();
    statusText.text = "Cancelling...";
});// Wait for completion or cancellation
var result = await bakeTask;
if (progress.WasCancelled())
{
    statusText.text = "Bake was cancelled";
}
```
