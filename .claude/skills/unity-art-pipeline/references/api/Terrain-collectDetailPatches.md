<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Terrain-collectDetailPatches.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Collect detail patches from memory.

By default the property value is true, meaning the detail patches in the Terrain will be removed from memory when not visible. If the property is set to false, the patches are kept in memory until the Terrain object is destroyed or the collectDetailPatches property is set to true. By setting the property to false all the detail patches for a given density will be initialized and kept in memory. Changing the density will recreate the patches.

Note that detail patches can use a large amount of memory, therefore this property when set to false can increase the memory usage of your application significantly.

The value is not serialized with Terrain component.

Additional resources: detailObjectDensity.

```csharp
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    void Start()
    {
        Terrain.activeTerrain.collectDetailPatches = false;
    }
}
```
