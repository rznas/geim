<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TerrainData.SetDetailLayer.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Sets the detail layer density map.

The Terrain system uses detail layer density maps. Each map is essentially a grayscale image where each pixel value specifies the number of detail objects to procedurally place in the terrain area that corresponds to the pixel. These values depend on which DetailScatterMode is set. Because several different detail types may be used, the map is arranged into "layers" - the array indices of the layers are determined by the order of the detail types defined in the Terrain inspector (ie, when the Paint Details tool is selected).

```csharp
using UnityEngine;public class ExampleClass : MonoBehaviour
{
    // Set all pixels in a detail map below a certain threshold to zero.
    void DetailMapCutoff(Terrain t, float threshold)
    {
        // Get all of layer zero.
        var map = t.terrainData.GetDetailLayer(0, 0, t.terrainData.detailWidth, t.terrainData.detailHeight, 0);        // For each pixel in the detail map...
        for (int y = 0; y < t.terrainData.detailHeight; y++)
        {
            for (int x = 0; x < t.terrainData.detailWidth; x++)
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
