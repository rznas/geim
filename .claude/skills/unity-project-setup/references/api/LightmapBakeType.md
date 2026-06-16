<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LightmapBakeType.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Enum describing what part of a light contribution can be baked.

The example below creates a Unity Editor menu option ("Tools → Set all lights to Baked") that, when selected, iterates through all active light objects currently present in the scene and sets their bake type to `Baked`. This ensures these lights will be fully precomputed into baked lightmaps, which can improve runtime performance.

```csharp
using UnityEditor;
using UnityEngine;public class MyMenuPoints
{
    [MenuItem("Tools/Set all lights to Baked")]
    static void SetAllLightsToBaked()
    {
        // Set all active lights in the scene to Baked
        Light[] allLights = Object.FindObjectsByType<Light>(FindObjectsInactive.Exclude, FindObjectsSortMode.None);
        foreach (Light thisLight in allLights)
        {
            thisLight.lightmapBakeType = LightmapBakeType.Baked;
        }
    }
}
```

### Properties

| Property | Description |
| --- | --- |
| Realtime | Real-time lights cast run time light and shadows. They can change position, orientation, color, brightness, and many other properties at run time. No lighting gets baked into lightmaps or light probes.. |
| Baked | Baked lights cannot move or change in any way during run time. All lighting for static objects gets baked into lightmaps. Lighting and shadows for dynamic objects gets baked into Light Probes. |
| Mixed | Mixed lights allow a mix of real-time and baked lighting, based on the Mixed Lighting Mode used. These lights cannot move, but can change color and intensity at run time. Changes to color and intensity only affect direct lighting as indirect lighting gets baked. If using Subtractive mode, changes to color or intensity are not calculated at run time on static objects. |
