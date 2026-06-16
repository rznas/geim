<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Experimental.GlobalIllumination.Lightmapping.SetDelegate.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The delegate for converting a list of lights into LightDataGI structures for light baking backends.

This is used for SRPs to customize or override how lighting data is passed and processed by the Global Illumination light baking backends. It allows SRPs to modify intensity, color, shadow casting, attenuation, or other parameters to meet their pipeline-specific needs and achieve custom lighting results. The delegate must be reset by calling ResetDelegate. The example below shows how to set a delegate, such as the one described at LightMode.

```csharp
using Unity.Collections;
using UnityEditor;
using UnityEngine;
using UnityEngine.Experimental.GlobalIllumination;
using Lightmapping = UnityEngine.Experimental.GlobalIllumination.Lightmapping;internal static class MyLightBakingUtils
{
    [MenuItem("Tools/Set delegate")]
    static void SetDelegate()
    {
        Lightmapping.SetDelegate(BakeOnlyDiscLightsDelegate);
    }    private static readonly Lightmapping.RequestLightsDelegate BakeOnlyDiscLightsDelegate = (Light[] requests, NativeArray<LightDataGI> lightsOutput) =>
    {
        // ...
    };
}
```
