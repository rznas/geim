<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LightTransport.InputExtraction.ComputeOcclusionLightIndicesFromBakeInput.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| bakeInput | The BakeInput containing light source information. |
| probePositions | Array of world-space positions where occlusion should be computed. |
| maxLightsPerProbe | Maximum number of lights to select per probe (typically 4 for shadowmask compatibility). |

### Returns

**int[]** Flattened array of light indices where each consecutive group of maxLightsPerProbe indices corresponds to one probe position.

### Description

Determines the most influential lights for occlusion calculations at each probe position.

This method analyzes the light sources in the scene and selects the most influential ones for each probe position.

The returned indices are used with IProbeIntegrator.IntegrateOcclusion to compute shadow mask data for mixed lighting mode.

**Array Layout:** For N probes and M lights per probe, the result contains N × M indices where indices [I × M to (I + 1) × M - 1] belong to probe i.

Additional resources: IProbeIntegrator.IntegrateOcclusion, InputExtraction.GetShadowmaskChannelsFromLightIndices.

```csharp
// Extract probe positions from light probe groups
var probePositions = new List<Vector3>();
var lightProbeGroups = FindObjectsOfType<LightProbeGroup>();
foreach (var group in lightProbeGroups)
{
    probePositions.AddRange(group.probePositions.Select(p =>
        group.transform.TransformPoint(p)));
}// Compute light indices for shadowmask occlusion
var lightIndices = InputExtraction.ComputeOcclusionLightIndicesFromBakeInput(
    bakeInput,
    probePositions.ToArray(),
    4  // 4 lights per probe for RGBA shadowmask
);// Get corresponding shadowmask channels
var shadowmaskChannels = InputExtraction.GetShadowmaskChannelsFromLightIndices(bakeInput, lightIndices);// Use with integrator
var result = integrator.IntegrateOcclusion(context, 0, probePositions.Count, 512, 4, lightIndexBuffer, occlusionBuffer);
```
