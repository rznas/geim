<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Terrain-treeCrossFadeLength.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Total distance delta that trees will use to transition from billboard orientation to mesh orientation.

Decreasing this value makes the transition happen faster. Setting it to 0 will produce a visible pop when switching from mesh to billboard representation.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void Start()
    {
        Terrain.activeTerrain.treeCrossFadeLength = 20;
    }
}
```
