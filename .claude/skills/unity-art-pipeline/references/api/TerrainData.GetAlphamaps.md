<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TerrainData.GetAlphamaps.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| x | The x offset to read from. |
| y | The y offset to read from. |
| width | The width of the alpha map area to read. |
| height | The height of the alpha map area to read. |

### Returns

**float[,,]** A 3D array of floats, where the 3rd dimension represents the mixing weight of each splatmap at each x,y coordinate.

### Description

Returns the alpha map at a position x, y given a width and height.

The returned array is three-dimensional - the first two dimensions represent y and x coordinates on the map, while the third denotes the splatmap texture to which the alphamap is applied.

```csharp
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    // Add some random "noise" to the alphamaps.
    void AddAlphaNoise(Terrain t, float noiseScale)
    {
        float[,,] maps = t.terrainData.GetAlphamaps(0, 0, t.terrainData.alphamapWidth, t.terrainData.alphamapHeight);        for (int y = 0; y < t.terrainData.alphamapHeight; y++)
        {
            for (int x = 0; x < t.terrainData.alphamapWidth; x++)
            {
                float a0 = maps[y, x, 0];
                float a1 = maps[y, x, 1];                a0 += Random.value * noiseScale;
                a1 += Random.value * noiseScale;                float total = a0 + a1;                maps[y, x, 0] = a0 / total;
                maps[y, x, 1] = a1 / total;
            }
        }        t.terrainData.SetAlphamaps(0, 0, maps);
    }
}
```
