<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Terrain-heightmapMaximumLOD.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Limits the Terrain's maximum rendering resolution.

Use on low-end graphics cards to block the highest level of detail for Terrain. A value of 0 for this property allows the terrain to be shown at the highest detail. A value of 1 reduces the maximum triangle count to one-fourth of its current value and halves the width and height of the heightmap resolution.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void Start()
    {
        Terrain.activeTerrain.heightmapMaximumLOD = 1;
    }
}
```
