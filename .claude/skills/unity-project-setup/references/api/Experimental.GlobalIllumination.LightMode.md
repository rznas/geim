<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Experimental.GlobalIllumination.LightMode.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The light mode a light baking backend uses.

A light can be real-time, mixed, baked or unknown. Unknown lights will be ignored by the baking backends.

The example below uses `LightMode` in a delegate to be used with Lightmapping.SetDelegate. The delegate forces all disc lights in a scene to be baked and all other types of lights to not be baked.

```csharp
using Unity.Collections;
using UnityEngine;
using UnityEngine.Experimental.GlobalIllumination;internal static class MyLightBakingUtils
{
    public static Lightmapping.RequestLightsDelegate BakeOnlyDiscLightsDelegate = (Light[] requests, NativeArray<LightDataGI> lightsOutput) =>
    {
        LightDataGI lightData = new LightDataGI();        // Iterate over all lights in the scene
        for (int i = 0; i < requests.Length; i++)
        {
            Light light = requests[i];            switch (light.type)
            {
                case UnityEngine.LightType.Disc:
                    DiscLight discLight = new DiscLight();
                    LightmapperUtils.Extract(light, ref discLight);
                    discLight.mode = LightMode.Baked;
                    lightData.Init(ref discLight);
                    break;
                case UnityEngine.LightType.Spot:
                case UnityEngine.LightType.Directional:
                case UnityEngine.LightType.Point:
                case UnityEngine.LightType.Rectangle:
                case UnityEngine.LightType.Pyramid:
                case UnityEngine.LightType.Box:
                case UnityEngine.LightType.Tube:
                default:
                    lightData.InitNoBake(light.GetEntityId());
                    break;
            }            lightsOutput[i] = lightData;
        }
    };
}
```

Additional resources: LightmapBakeType.

### Properties

| Property | Description |
| --- | --- |
| Realtime | The light is real-time. No contribution will be baked in lightmaps or light probes. |
| Mixed | The light is mixed. Mixed lights are interpreted based on the global light mode setting in the lighting window. |
| Baked | The light is fully baked and has no real-time component. |
| Unknown | The light should be ignored by the baking backends. |
