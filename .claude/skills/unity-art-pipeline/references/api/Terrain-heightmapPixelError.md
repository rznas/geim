<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Terrain-heightmapPixelError.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

An approximation of how many pixels the terrain will pop in the worst case when switching lod.

A higher value reduces the number of polygons drawn.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void Start()
    {
        Terrain.activeTerrain.heightmapPixelError = 10;
    }
}
```
