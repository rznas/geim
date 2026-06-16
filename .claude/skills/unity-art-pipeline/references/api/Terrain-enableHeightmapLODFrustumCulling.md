<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Terrain-enableHeightmapLODFrustumCulling.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Controls frustum culling for the terrain heightmap LOD system.

When enabled (the default), terrain patches outside the camera frustum are simplified aggressively, which reduces heightmap tessellation cost.

When disabled, terrain is tessellated based on camera distance and pixel error only, regardless of whether it is visible.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void Start()
    {
        // Note: disabling this increases heightmap tessellation cost for off-screen terrain.
        foreach (var terrain in Terrain.activeTerrains)
            terrain.enableHeightmapLODFrustumCulling = false;
    }
}
```
