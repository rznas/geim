<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TerrainData.GetDetailLayer.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| xBase | First x index of detail object density data to retrieve. |
| yBase | First y index of detail object density data to retrieve. |
| width | The amount of detail object density data to retrieve along the Terrain's x axis. |
| height | The amount of detail object density data to retrieve along the Terrain's z axis. |
| layer | The index of the detail in the `TerrainData.detailPrototypes` array. |

### Description

Returns a 2D array of the detail object density (i.e. the number of detail objects for this layer) in the specific location.

The Terrain system uses detail layer density maps. Each map is essentially a grayscale image, where each pixel value denotes the number of detail objects that will be procedurally placed Terrain area. That corresponds to the pixel. Since several different detail types may be used, the map is arranged into "layers" - the array indices of the layers are determined by the order of the detail types defined in the Terrain inspector (i.e. when the Paint Details tool is selected).

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    // Set all pixels in a detail map below a certain threshold to zero.
    void DetailMapCutoff(Terrain t, float threshold)
    {
        // Get all of layer zero.
        var map = t.terrainData.GetDetailLayer(0, 0, t.terrainData.detailWidth, t.terrainData.detailHeight, 0);        // For each pixel in the detail map...
        for (var y = 0; y < t.terrainData.detailHeight; y++)
        {
            for (var x = 0; x < t.terrainData.detailWidth; x++)
            {
                // If the pixel value is below the threshold then
                // set it to zero.
                if (map[x, y] < threshold)
                {
                    map[x, y] = 0;
                }
            }
        }        // Assign the modified map back.
        t.terrainData.SetDetailLayer(0, 0, 0, map);
    }
}
```
