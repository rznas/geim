<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Tilemaps.Tilemap.SetTransformMatrix.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| position | Position of the Tile on the Tilemap. |
| transform | The transform matrix. |

### Description

Sets the transform matrix of a Tile given the XYZ coordinates of a cell in the Tilemap.

Note that if the Tile has set TileFlags.LockTransform, then this matrix has no effect.

```csharp
// Rotate the tile in (0,0,0) 90 degrees
using UnityEngine;
using UnityEngine.Tilemaps;public class ExampleClass : MonoBehaviour
{
    void Start()
    {
        Tilemap tilemap = GetComponent<Tilemap>();
        Matrix4x4 matrix = Matrix4x4.TRS(Vector3.zero, Quaternion.Euler(0f, 0f, 90f), Vector3.one);
        tilemap.SetTransformMatrix(new Vector3Int(0, 0, 0), matrix);
    }
}
```

Refer to Scriptable Tiles and Tilemap for more information.
