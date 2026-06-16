<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LightTransport.InputExtraction.ExtractFromScene.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| bakeInput | Output parameter that receives the extracted scene data. |
| probesOnly | Whether to only extract data needed for baking probes. Setting this to false will skip lightmap packing. |

### Returns

**bool** True if extraction completed successfully, false if errors occurred.

### Description

Extracts all relevant scene data for light transport calculations from the currently open scenes.

This method scans all currently open scenes and extracts objects that affect global illumination calculations. It processes:

**Geometry:** - MeshRenderer components with static flags or "Contribute GI" enabled. - Terrain objects with baked lighting enabled, including trees. - Associated Material properties and textures.

**Lighting:** - Light components configured for baked or mixed lighting. - Environment lighting and skybox settings. - Light probe groups (LightProbeGroup).

**Output Data:** The resulting BakeInput contains preprocessed data ready for PopulateWorld. Objects not marked as static or not affecting GI are automatically excluded.

**Performance Note:** This operation can be expensive for large scenes as it processes all geometry and builds internal data structures.

```csharp
// Extract scene data for baking
bool extractionSuccess = InputExtraction.ExtractFromScene(out var bakeInput);
if (!extractionSuccess)
{
    Debug.LogError("Failed to extract scene data for light baking");
    return;
}// Proceed with context creation and world population
using var context = new RadeonRaysContext();
context.Initialize();
var world = new RadeonRaysWorld();
using var progress = new BakeProgressState();bool populateSuccess = InputExtraction.PopulateWorld(bakeInput, progress, context, world);
Assert.IsTrue(populateSuccess);
```
