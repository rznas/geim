<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Terrain.SampleHeight.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Samples the height at the given position defined in world space, relative to the Terrain space.

This method automatically clamps the world position to the Terrain boundaries.

```csharp
using UnityEngine;public class ExampleScript : MonoBehaviour
{
    void LateUpdate()
    {
        Vector3 pos = transform.position;
        pos.y = Terrain.activeTerrain.SampleHeight(transform.position);
        transform.position = pos;
    }
}
```
