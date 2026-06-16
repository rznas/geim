<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Terrain-treeMaximumFullLODCount.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Maximum number of trees rendered at full LOD.

This is an easy setting to prevent too many trees being rendered at too high resolution in dense forests. Since there will be no fade if `treeMaximumFullLODCount` is exceeded you should tweak the `treeBillboardDistance` to not include unnecessary trees that are not being seen but, still rendered.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void Start()
    {
        Terrain.activeTerrain.treeMaximumFullLODCount = 200;
    }
}
```
