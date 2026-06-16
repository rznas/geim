<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LightBakingOutput.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Struct describing the result of a Global Illumination bake for a given light.

The example below demonstrates how you can check the baked status of a light and change its active state.

```csharp
using UnityEngine;
using System.Collections;public class LightBakingOutputExample : MonoBehaviour
{
    void TurnOffLight(Light light)
    {
        if (light.bakingOutput.isBaked && light.bakingOutput.lightmapBakeType != LightmapBakeType.Realtime)
        {
            Debug.Log("Light got some contribution statically baked, it cannot be turned off at runtime.");
        }
        else
        {
            light.enabled = false;
        }
    }
}
```

### Properties

| Property | Description |
| --- | --- |
| isBaked | Is the light contribution already stored in lightmaps and/or lightprobes? |
| lightmapBakeType | This property describes what part of a light's contribution was baked. |
| mixedLightingMode | In case of a LightmapBakeType.Mixed light, describes what Mixed mode was used to bake the light, irrelevant otherwise. |
| occlusionMaskChannel | In case of a LightmapBakeType.Mixed light, contains the index of the occlusion mask channel to use if any, otherwise -1. |
| probeOcclusionLightIndex | In case of a LightmapBakeType.Mixed light, contains the index of the light as seen from the occlusion probes point of view if any, otherwise -1. |
