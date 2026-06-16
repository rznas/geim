<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LightTransport.BakeProgressState.SetTotalWorkSteps.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| total | Total amount of work steps. |

### Description

Sets the total amount of work steps for the progress state. Increase the completed work steps using IncrementCompletedWorkSteps.

Configures the total expected work for progress calculation. This value is used as the denominator when calculating progress percentages. The total should represent meaningful work units for the operation being performed.

**Guidelines for Setting Total Steps:**

 - Use consistent units (e.g., number of probes to process). - Estimate conservatively to avoid progress going backwards. - Consider breaking large operations into sub-operations with their own totals. - Set the total before starting work and avoid changing it during execution.

```csharp
// Configure progress for different operation types
using var progress = new BakeProgressState();// For probe integration: total = number of probes
int probeCount = 256;
progress.SetTotalWorkSteps((ulong)probeCount);
integrator.SetProgressReporter(progress);// For world population: estimate based on scene complexity
int estimatedSteps = input.bakeInput.instanceCount +
                    input.bakeInput.meshCount * 10;
progress.SetTotalWorkSteps((ulong)estimatedSteps);
InputExtraction.PopulateWorld(input, progress, context, world);// For custom operations: use logical work units
int totalTextures = materials.Length;
progress.SetTotalWorkSteps((ulong)totalTextures);
foreach (var material in materials)
{
    ProcessMaterialTextures(material);
    progress.IncrementCompletedWorkSteps(1);
}
```
