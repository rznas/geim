<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Terrain-basemapDistance.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Heightmap patches beyond basemap distance will use a precomputed low res basemap.

This improves performance for far away patches. Close up Unity renders the heightmap using splat maps by blending between any amount of provided terrain textures.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void Start()
    {
        Terrain.activeTerrain.basemapDistance = 100;
    }
}
```
