<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Experimental.GlobalIllumination.FalloffType.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The falloff models to use for a light baking backend.

A falloff model describes how light intensity diminishes (falls off) with distance from the source.

This enumeration allows SRPs or custom lighting implementations to specify explicitly how lights should behave when processed by the Global Illumination light baking backends.

The example below uses `FalloffType` in a delegate to be used with Lightmapping.SetDelegate. The delegate forces all disc lights in a scene to be baked with a falloff model of `InverseSquared`.

```csharp
using Unity.Collections;
using UnityEngine;
using UnityEngine.Experimental.GlobalIllumination;internal static class MyLightBakingUtils
{
    public static Lightmapping.RequestLightsDelegate BakeFalloffInverseSquaredDelegate = (Light[] requests, NativeArray<LightDataGI> lightsOutput) =>
    {
        LightDataGI lightData = new ();        // Iterate over all lights in the scene
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
            }            lightData.falloff = FalloffType.InverseSquared;
            lightsOutput[i] = lightData;
        }
    };
}
```

### Properties

| Property | Description |
| --- | --- |
| InverseSquared | Inverse squared distance falloff model. |
| InverseSquaredNoRangeAttenuation | Inverse squared distance falloff model (without smooth range attenuation). |
| Linear | Linear falloff model. |
| Legacy | Quadratic falloff model. |
| Undefined | Falloff model is undefined. |
