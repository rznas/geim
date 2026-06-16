<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TerrainData.GetInterpolatedNormal.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| x | The normalized x-coordinate of the location, in the range [0, 1]. |
| y | The normalized y-coordinate of the location, in the range [0, 1]. |

### Returns

**Vector3** A normalized normal vector representing the surface orientation at the given location.

### Description

Get an interpolated normal vector at a given location on the heightmap.

The `x` and `y` parameters are normalized coordinates that specify a position on the heightmap.
The function first computes surface normals at the surrounding grid points using the Sobel filter, then performs bilinear interpolation on these normals to calculate the final surface normal at the given location.
 This function does not loop or wrap around the heightmap. Coordinates outside the normalized range [0, 1] are extrapolated based on the nearest valid points, ensuring a valid normal vector is always returned.
The returned normal is a unit vector.

```csharp
using UnityEngine;public class ExampleTerrainInterpolatedNormal : MonoBehaviour
{
    void Start()
    {
        // Reference to the active terrain
        Terrain terrain = Terrain.activeTerrain;
        if (terrain == null)
        {
            Debug.LogError("No active terrain found.");
            return;
        }        // Get the TerrainData
        TerrainData terrainData = terrain.terrainData;        // Example world position
        Vector3 worldPosition = new Vector3(50f, 0f, 75f);        // Convert world position to normalized terrain coordinates
        Vector3 terrainPosition = worldPosition - terrain.transform.position;
        float normalizedX = Mathf.InverseLerp(0, terrainData.size.x, terrainPosition.x);
        float normalizedZ = Mathf.InverseLerp(0, terrainData.size.z, terrainPosition.z);        // Ensure coordinates are within the valid range of [0, 1]
        normalizedX = Mathf.Clamp01(normalizedX);
        normalizedZ = Mathf.Clamp01(normalizedZ);        // Get the interpolated normal
        Vector3 interpolatedNormal = terrainData.GetInterpolatedNormal(normalizedX, normalizedZ);        // Output the normal vector
        Debug.Log($"Interpolated Normal at ({worldPosition.x}, {worldPosition.z}): {interpolatedNormal}");
        // Example output from a terrain with differing heights around the sampled position:
        // Interpolated Normal at (50, 75): (-0.57, 0.67, 0.47)
    }
}
```
