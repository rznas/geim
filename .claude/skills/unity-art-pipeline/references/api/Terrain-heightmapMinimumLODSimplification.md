<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Terrain-heightmapMinimumLODSimplification.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Limits how simplified the rendered terrain can be.

Sets the lowest level of simplification for the Terrain. Also affects areas that are outside of the camera frustum. Use this property to correct a situation where Terrain that is outside of the camera's view casts an overly simplified shadow inside the camera's view. A value of 0 means there's no limit on reducing the Terrain's level of detail. Each increment of the value quadruples the minimum number of triangles used to render the Terrain. A high value can reduce performance because of high culling time.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void Start()
    {
        Terrain.activeTerrain.heightmapMinimumLODSimplification = 2;
    }
}
```
