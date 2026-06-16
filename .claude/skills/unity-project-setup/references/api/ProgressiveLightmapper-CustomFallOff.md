<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/ProgressiveLightmapper-CustomFallOff.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Change the fade distance of lights with fall-off

In the real world, light fades over distance, and dim lights have a lower range than bright lights. The term “fall-off” refers to the rate at which light fades. Alongside Unity’s default fall-off lighting behaviour, you can also use custom fall-off settings.

Progressive **Lightmapper** provides custom fall-off presets, which you can implement via script. See the image below the table for a visual representation of how these work, and the code sample below the image for an example of how to use this functionality.

Refer to `FalloffType` for more information.

## Example

**Note**: The code example below only works with the Progressive Lightmapper when you use Baked or Mixed lights. To use the code example with **realtime lights**, use Enlighten Realtime Global Illumination.

```csharp
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Experimental.GlobalIllumination;
using UnityEngine.SceneManagement;
[ExecuteInEditMode]
public class ExtractFalloff : MonoBehaviour
{
    public void OnEnable()
    {
        Lightmapping.RequestLightsDelegate testDel = (Light[] requests, Unity.Collections.NativeArray<LightDataGI> lightsOutput) =>
        {
            DirectionalLight dLight = new DirectionalLight();
            PointLight point = new PointLight();
            SpotLight spot = new SpotLight();
            RectangleLight rect = new RectangleLight();
            DiscLight disc = new DiscLight();
            Cookie cookie = new Cookie();
            LightDataGI ld = new LightDataGI();
            
            for (int i = 0; i < requests.Length; i++)
            {
                Light l = requests[i];
                switch (l.type)
                {
                    case UnityEngine.LightType.Directional: LightmapperUtils.Extract(l, ref dLight); LightmapperUtils.Extract(l, out cookie); ld.Init(ref dLight, ref cookie); break;
                    case UnityEngine.LightType.Point: LightmapperUtils.Extract(l, ref point); LightmapperUtils.Extract(l, out cookie); ld.Init(ref point, ref cookie); break;
                    case UnityEngine.LightType.Spot: LightmapperUtils.Extract(l, ref spot); LightmapperUtils.Extract(l, out cookie); ld.Init(ref spot, ref cookie); break;
                    case UnityEngine.LightType.Rectangle: LightmapperUtils.Extract(l, ref rect); LightmapperUtils.Extract(l, out cookie); ld.Init(ref rect, ref cookie); break;
                    case UnityEngine.LightType.Disc: LightmapperUtils.Extract(l, ref disc); LightmapperUtils.Extract(l, out cookie); ld.Init(ref disc, ref cookie); break;
                    default: ld.InitNoBake(l.GetEntityId()); break;
                }

                if (l.cookie != null)
                {
                    ld.cookieTextureEntityId = l.cookie.GetEntityId();
                }
                else
                {
                    ld.cookieTextureEntityId = EntityId.None;
                }
                
                ld.falloff = FalloffType.InverseSquared;
                lightsOutput[i] = ld;
            }
        };
        Lightmapping.SetDelegate(testDel);
    }
    void OnDisable()
    {
        Lightmapping.ResetDelegate();
    }
}
```

**Note**: All code in the example above is necessary for the custom falloff to work; however, you can change `InverseSquared` in the line `ld.falloff = FalloffType.InverseSquared;` to use any of the presets.
