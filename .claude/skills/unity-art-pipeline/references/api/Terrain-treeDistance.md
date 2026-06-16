<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Terrain-treeDistance.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The maximum distance at which trees are rendered.

The higher this is, the further the distance trees can be seen and the slower it will run.

Additional resources: Terrain.treeBillboardDistance.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void Start()
    {
        Terrain.activeTerrain.treeDistance = 2000;
    }
}
```
