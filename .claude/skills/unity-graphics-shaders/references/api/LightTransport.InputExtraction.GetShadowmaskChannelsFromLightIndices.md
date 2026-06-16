<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LightTransport.InputExtraction.GetShadowmaskChannelsFromLightIndices.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| bakeInput | The BakeInput containing light configuration data. |
| lightIndices | Array of light indices to query for shadowmask channels. |

### Returns

**int[]** Array of shadowmask channel indices (0-3 for RGBA, or -1 for no channel) corresponding to each input light index.

### Description

Retrieves the shadowmask channel assignments for specified mixed lights.

This method maps light indices to their assigned shadowmask channels in Unity's mixed lighting system. Mixed lights use shadowmask textures to store precomputed shadow information while providing real-time lighting.

**Channel Mapping:**

- 0: Red channel.
- 1: Green channel.
- 2: Blue channel.
- 3: Alpha channel.
- -1: Light has no shadowmask channel assigned.

The shadowmask channels are automatically assigned by Unity's lighting system based on light overlap and priority. Use this information to correctly interpret occlusion data from IProbeIntegrator.IntegrateOcclusion.

Additional resources: InputExtraction.ComputeOcclusionLightIndicesFromBakeInput, IProbeIntegrator.IntegrateOcclusion.

```csharp
// Get light indices for occlusion computation
var lightIndices = InputExtraction.ComputeOcclusionLightIndicesFromBakeInput(bakeInput, probePositions, 4);// Map indices to shadowmask channels
var channels = InputExtraction.GetShadowmaskChannelsFromLightIndices(bakeInput, lightIndices);// Process occlusion results with channel mapping
for (int probeIndex = 0; probeIndex < probeCount; probeIndex++)
{
    for (int lightIndex = 0; lightIndex < 4; lightIndex++)
    {
        int arrayIndex = probeIndex * 4 + lightIndex;
        int globalLightIndex = lightIndices[arrayIndex];
        int shadowmaskChannel = channels[arrayIndex];
        float occlusion = occlusionResults[arrayIndex];        if (shadowmaskChannel >= 0)
        {
            Debug.Log($"Probe {probeIndex}, Light {globalLightIndex}: " +
                     $"Channel {shadowmaskChannel}, Occlusion {occlusion}");
        }
    }
}
```
