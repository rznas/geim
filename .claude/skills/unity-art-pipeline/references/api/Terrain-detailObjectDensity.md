<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Terrain-detailObjectDensity.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Density of detail objects.

This number goes from 0.0 to 1.0, with 1.0 being the original density, and lower numbers resulting in less detail objects being rendered.

Additional resources: detailObjectDistance.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void Start()
    {
        Terrain.activeTerrain.detailObjectDensity = 0.5f;
    }
}
```
